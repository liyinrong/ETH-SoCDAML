// Copyright 2023 ETH Zurich and University of Bologna.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

/////////////////////////////////
//          INCLUDES           //
/////////////////////////////////

// Device-specific includes
#ifdef __HERO_1
#include <inttypes.h>
#include <stddef.h>
#include "dev_utils.h"
#include "encoding.h"
// Host-specific includes
#else
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <libhero/herodev.h>
#include "host_utils.h"
#endif
// Common includes
#include <hero_64.h>
#include "sobel.h"

/*
 * Reads file to *buffer. Returns file size.
 */

void readFile(char *file_name, uint8_t *buffer, int buffer_size) {
  // Open
  FILE *file = fopen(file_name, "r");

  // Read every char of file ONE BY ONE (not the whole thing at once)
  // We do this because this should look closer to the assembly implementation
  for (int i = 0; i < buffer_size; i++) {
    buffer[i] = fgetc(file);
  }

  // Close
  fclose(file);
}

/*
 * Writes the buffer to a file
 */

void writeFile(char *file_name, uint8_t *buffer, int buffer_size) {
  // Open
  FILE *file = fopen(file_name, "w");

  // Write all
  for (int i = 0; i < buffer_size; i++) {
    fputc(buffer[i], file);
  }

  // Close
  fclose(file);
}

/////////////////////////////////
//            MAIN             //
/////////////////////////////////

#define ARGS_NEEDED 3

int main(int argc, char *argv[]) {
  char *file_in;
  char *file_out;

  int width = 128;
  int height = 128;

  // Argparsing
  // Get arguments
  if (argc < ARGS_NEEDED) {
    printf("sobel file_in file_out\n");
    return 1;
  }

  // File names
  file_in = argv[1];
  file_out = argv[2];

// Initialize omp
#pragma omp target device(1)
  asm volatile("nop");

  // Physical addresses
  uintptr_t in_buffer_l3_phys, out_buffer_l3_phys;
  // Virtual addresses
  uint8_t *in_buffer_l3 = NULL, *out_buffer_l3 = NULL;

  // Device matrices
  in_buffer_l3 =
      dev_l3_alloc(width * height * 3 * sizeof(uint8_t), &in_buffer_l3_phys);
  out_buffer_l3 =
      dev_l3_alloc(width * height * sizeof(uint8_t), &out_buffer_l3_phys);

  // Read file to rgb and get size
  readFile(file_in, in_buffer_l3, width * height * 3 * sizeof(uint8_t));

  printf("\n\n");
  printf("\n\n/////////////////////////////////////////////////////////////");
  printf("\nLaunching the filter\n");
  fflush(stdout);

#pragma omp target device(1)                                                   \
    map(to : in_buffer_l3_phys, out_buffer_l3_phys, width, height)
  {
    volatile uint32_t _in_buffer_l3_phys = (uint32_t)in_buffer_l3_phys;
    volatile uint32_t _out_buffer_l3_phys = (uint32_t)out_buffer_l3_phys;
    volatile uint32_t _width = (uint32_t)width;
    volatile uint32_t _height = (uint32_t)height;
// Device-specific kernel
#ifdef __HERO_1
    filter(_in_buffer_l3_phys, _out_buffer_l3_phys, _width, _height);
// Host fallback
#else
    asm volatile("nop");
#endif
  }

  printf("Filter is done\n");
  printf("/////////////////////////////////////////////////////////////\n\n");
  printf("\n\n");
  fflush(stdout);

  // Write sobel img to a file
  writeFile(file_out, out_buffer_l3, width * height * sizeof(uint8_t));

  // Print all the recorded timestamps
#ifndef __HERO_1
  hero_print_timestamp();
  fflush(stdout);
#endif

  return 0;
}
