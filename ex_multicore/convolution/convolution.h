// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
#ifndef _CONF_HEADER_
#define _CONF_HEADER_

#define ROUNDBIT   (1 << (DATA_WIDTH -1 -1))
#define SATURATION ((1 << (DATA_WIDTH -1)) -1)

#include "config.h" //generate by matlab

#if DATA_TYPE == 8

    typedef signed char      Filtc;
    typedef signed char      Pixel;
    typedef signed char      FiltcV     __attribute__((vector_size (4)));
    typedef signed char      PixelV     __attribute__((vector_size (4)));
#else

    typedef signed short      Filtc;
    typedef signed short      Pixel;
    typedef signed short      FiltcV    __attribute__((vector_size (4)));
    typedef signed short      PixelV    __attribute__((vector_size (4)));
#endif

#include "data_image.h" //generate by matlab

// load initialize out to 0
void InitZero(Pixel * __restrict__ Img, int size)
{
  int i;

  for (i=0; i < size; i++)
      Img[i] = 0;

}

void checkresult(Pixel * __restrict__ Out, Pixel * __restrict__ OutGold, int N)
{
  int i;
  int err = 0;

  for (i = 0; i<N; i++) {
    if (Out[i]!=OutGold[i]) {
      printf("At index %d: Actual value: %x: Expected: %x\n", i, Out[i],  OutGold[i]);
      err++;
    }
  }
  if(err == 0) {
    printf("No errors detected.\n");
  }
}

#endif
