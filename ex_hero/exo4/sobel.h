// Copyright 2023 ETH Zurich and University of Bologna.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#pragma once

////// Compile this file only for the device /////
#ifdef __HERO_1

#include <inttypes.h>
#include <math.h>
#include <stddef.h>
#include <string.h>

#define SOBEL_OP_SIZE 9

/*
 * Transforms the rgb information of an image stored in buffer to it's gray
 * representation
 */
void rgbToGray(uint8_t *rgb, uint8_t *gray, uint32_t buffer_size) {
// Calculate the value for every pixel in gray
  #pragma omp parallel for
  for (uint32_t i = 0; i < buffer_size; i++) {
    gray[i] = 0.30 * rgb[i * 3] + 0.59 * rgb[i * 3 + 1] + 0.11 * rgb[i * 3 + 2];
  }
}

/*
 * Make the operation memory for iterative convolution
 */
void makeOpMem(uint8_t *buffer, int buffer_size, int width, int cindex,
               uint8_t *op_mem) {
  int bottom = cindex - width < 0;
  int top = cindex + width >= buffer_size;
  int left = cindex % width == 0;
  int right = (cindex + 1) % width == 0;

  op_mem[0] = !bottom && !left ? buffer[cindex - width - 1] : 0;
  op_mem[1] = !bottom ? buffer[cindex - width] : 0;
  op_mem[2] = !bottom && !right ? buffer[cindex - width + 1] : 0;

  op_mem[3] = !left ? buffer[cindex - 1] : 0;
  op_mem[4] = buffer[cindex];
  op_mem[5] = !right ? buffer[cindex + 1] : 0;

  op_mem[6] = !top && !left ? buffer[cindex + width - 1] : 0;
  op_mem[7] = !top ? buffer[cindex + width] : 0;
  op_mem[8] = !top && !right ? buffer[cindex + width + 1] : 0;
}

/*
 * Performs convolution between first two arguments
 */
int convolution(uint8_t *__restrict__ X, int *__restrict__ Y, int c_size) {
  int sum = 0;
  for (int i = 0; i < c_size; i++) {
    sum += X[i] * Y[c_size - i - 1];
  }
  return sum;
}

/*
 * Iterate Convolution
 */

__attribute__((noinline)) void itConv(uint8_t *buffer, int buffer_size,
                                      int width, int *op,
                                      uint8_t *__restrict__ res) {
  // Temporary memory for each pixel operation
  uint8_t op_mem[SOBEL_OP_SIZE];
  memset(op_mem, 0, SOBEL_OP_SIZE);

// Make convolution for every pixel
  #pragma omp parallel for
  for (int i = 0; i < buffer_size; i++) {
    // Make op_mem
    makeOpMem(buffer, buffer_size, width, i, op_mem);

    // Convolution
    res[i] = (uint8_t)abs(convolution(op_mem, op, SOBEL_OP_SIZE));

    /*
     * The abs function is used in here to avoid storing negative numbers
     * in a byte data type array. It wouldn't make a different if the negative
     * value was to be stored because the next time it is used the value is
     * squared.
     */
  }
}

/*
 * Approximate the sqrt function to avoid a hardware bug
 */
float sqrt_approx(float f) {
  const int result = 0x1fbb4000 + (*(int *)&f >> 1);
  return *(float *)&result;
}

/*
 * Contour
 */
void contour(uint8_t *__restrict__ sobel_h, uint8_t *__restrict__ sobel_v,
             int gray_size, uint8_t *__restrict__ contour_img) {
// Iterate through every pixel to calculate the contour image
  #pragma omp parallel for
  for (int i = 0; i < gray_size; i++) {
    float pow_h = (float)(sobel_h[i] * sobel_h[i]);
    float pow_v = (float)(sobel_v[i] * sobel_v[i]);
    float sum = pow_h + pow_v;
    contour_img[i] = (uint8_t)(sqrt_approx(sum));
  }
}

int sobelFilter(uint8_t *in_buffer, uint8_t *out_buffer, uint8_t *tmp_buffer,
                int width, int height) {
  int sobel_h[] = {-1, 0, 1, -2, 0, 2, -1, 0, 1},
      sobel_v[] = {1, 2, 1, 0, 0, 0, -1, -2, -1};

  // Buffers
  uint8_t *rgb;
  uint8_t *gray;
  uint8_t *sobel_h_res;
  uint8_t *sobel_v_res;

  // Calculate size of arrays.
  const int unsigned gray_size = width * height;
  const int unsigned rgb_size = gray_size * 3;

  // Get gray representation of the image
  gray = out_buffer;
  rgbToGray(in_buffer, gray, gray_size);

  // Make sobel operations
  sobel_h_res = in_buffer;
  sobel_v_res = tmp_buffer;
  itConv(gray, gray_size, width, sobel_h, sobel_h_res);
  itConv(gray, gray_size, width, sobel_v, sobel_v_res);

  // Calculate contour matrix
  contour(sobel_h_res, sobel_v_res, gray_size, out_buffer);
  return gray_size;
}

void filter(uint32_t in_phys, uint32_t out_phys, uint32_t width,
            uint32_t height) {
  if (!in_phys || !out_phys || !width || !height) {
    snrt_printf("ERROR: Offloaded variables are NULL!\n");
    return;
  }
  if (dev_check_transfer(in_phys, out_phys, width * height)) {
    return;
  }

  uint8_t *in = (uint8_t *)in_phys;
  uint8_t *out = (uint8_t *)out_phys;

  uint32_t const gray_size = width * height;
  uint32_t const rgb_size = 3 * gray_size;

  // Allocate buffers
  // TODO
  uint8_t *tmp_buffer_l1 = snrt_l1alloc(gray_size * sizeof(uint8_t));
  uint8_t *in_l1 = snrt_l1alloc(rgb_size * sizeof(uint8_t));
  uint8_t *out_l1 = snrt_l1alloc(gray_size * sizeof(uint8_t));
  // snrt_printf("Start!\n");

  if (tmp_buffer_l1 == NULL || in_l1 == NULL || out_l1 == NULL) {
    snrt_printf("ERROR: Memory allocation failed!\n");
  } else {
    // Copy the data from L3 into L1
    // TODO
    dev_dma_memcpy((__device void*)in_l1, (const __device void*)in, rgb_size * sizeof(uint8_t));
    dm_wait();
    snrt_printf("L1!\n");

    // Launch the Sobelfilter
    sobelFilter(in_l1, out_l1, tmp_buffer_l1, width, height);
    // snrt_printf("Compute!\n");

    // Copy the resulting image out
    // TODO
    dev_dma_memcpy((__device void*)out, (const __device void*)out_l1, gray_size * sizeof(uint8_t));
    dm_wait();
    snrt_printf("L3!\n");

  }
}

#endif
