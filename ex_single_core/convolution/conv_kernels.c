// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

#include "convolution.h"
#include <stdio.h>

#define ROUNDBIT   (1 << (DATA_WIDTH -1 -1))
#define SATURATION ((1 << (DATA_WIDTH -1)) -1)

void __attribute__ ((noinline)) Conv5x5_Scalar  (Pixel * In_Img, Pixel * Out_Img, int R, int C, Filtc  * Kernel)
{
  int r, c, k, j, t;
  int S;

  //image board is black
  for (r=2; r < R-2; r++) {
    for (c=2; c < C-2; c++) {

        //move in the window
        /* Coordinate window
            (-2;-2) (-2;-1) (-2; 0) (-2;+1) (-2;+2)
            (-1;-2) (-1;-1) (-1; 0) (-1;+1) (-1;+2)
            ( 0;-2) ( 0;-1) ( 0; 0) ( 0;+1) ( 0;+2)
            (+1;-2) (+1;-1) (+1; 0) (+1;+1) (+1;+2)
            (+2;-2) (+2;-1) (+2; 0) (+2;+1) (+2;+2)
        */
        //IMPLEMENT HERE YOUR 2D CONVOLUTION
        S = 0;
        S = *(In_Img+(r-2)*C+(c-2)) * *(Kernel);
        S += *(In_Img+(r-2)*C+(c-1)) * *(Kernel+1);
        S += *(In_Img+(r-2)*C+c) * *(Kernel+2);
        S += *(In_Img+(r-2)*C+(c+1)) * *(Kernel+3);
        S += *(In_Img+(r-2)*C+(c+2)) * *(Kernel+4);
        S += *(In_Img+(r-1)*C+(c-2)) * *(Kernel+5);
        S += *(In_Img+(r-1)*C+(c-1)) * *(Kernel+6);
        S += *(In_Img+(r-1)*C+c) * *(Kernel+7);
        S += *(In_Img+(r-1)*C+(c+1)) * *(Kernel+8);
        S += *(In_Img+(r-1)*C+(c+2)) * *(Kernel+9);
        S += *(In_Img+r*C+(c-2)) * *(Kernel+10);
        S += *(In_Img+r*C+(c-1)) * *(Kernel+11);
        S += *(In_Img+r*C+c) * *(Kernel+12);
        S += *(In_Img+r*C+(c+1)) * *(Kernel+13);
        S += *(In_Img+r*C+(c+2)) * *(Kernel+14);
        S += *(In_Img+(r+1)*C+(c-2)) * *(Kernel+15);
        S += *(In_Img+(r+1)*C+(c-1)) * *(Kernel+16);
        S += *(In_Img+(r+1)*C+c) * *(Kernel+17);
        S += *(In_Img+(r+1)*C+(c+1)) * *(Kernel+18);
        S += *(In_Img+(r+1)*C+(c+2)) * *(Kernel+19);
        S += *(In_Img+(r+2)*C+(c-2)) * *(Kernel+20);
        S += *(In_Img+(r+2)*C+(c-1)) * *(Kernel+21);
        S += *(In_Img+(r+2)*C+c) * *(Kernel+22);
        S += *(In_Img+(r+2)*C+(c+1)) * *(Kernel+23);
        S += *(In_Img+(r+2)*C+(c+2)) * *(Kernel+24);

        // for (k=-2; k < 3; k++)
        // {
        //   for(j=-2; j < 3; j++)
        //   {
        //     S += *(In_Img+(r+k)*C+(c+j)) * *(Kernel+(k+2)*5+(j+2));
        //   }
        // }

        t = r*C + c;
        // Rounding
        S = S + ROUNDBIT;
        // Normalization: Data are Q2.2*(DATA_WIDTH-1), now Q2.DATA_WIDTH-1
        S = S >> (DATA_WIDTH-1);
        // Saturation
        S = S > SATURATION ? SATURATION : S;
        S = S <          0 ?          0 : S;

        Out_Img[t] = (Pixel)S;
    }
  }
}

void __attribute__ ((noinline)) Conv5x5_Vector  (Pixel * In_Img, Pixel * Out_Img, int R, int C, Filtc  * Kernel)
{
 #ifdef PULP_EXT
  FiltcV coeff_0, coeff_1, coeff_2, coeff_3, coeff_4, coeff_5, coeff_6, coeff_7, coeff_8, coeff_9, coeff_10, coeff_11, coeff_12;
  PixelV Img_0, Img_1, Img_2, Img_3, Img_4, Img_5, Img_6, Img_7, Img_8, Img_9, Img_10, Img_11, Img_12;
  PixelV new_data1, new_data2, new_data3;
  int r, c, i, j, t;
  PixelV mask0;
  int S;

  coeff_0  = *((FiltcV *) (&Kernel[0]));
  coeff_1  = *((FiltcV *) (&Kernel[2]));
  coeff_2  = *((FiltcV *) (&Kernel[5])); //continue
  coeff_3  = *((FiltcV *) (&Kernel[7])); //continue
  coeff_4  = *((FiltcV *) (&Kernel[10])); //continue
  coeff_5  = *((FiltcV *) (&Kernel[12])); //continue
  coeff_6  = *((FiltcV *) (&Kernel[15])); //continue
  coeff_7  = *((FiltcV *) (&Kernel[17])); //continue
  coeff_8  = *((FiltcV *) (&Kernel[20])); //continue
  coeff_9  = *((FiltcV *) (&Kernel[22])); //continue
  //coeff_10, coeff_11 and coeff_12 are not continuos in memory
  coeff_10 = (FiltcV)     { Kernel[4],  Kernel[9] };
  coeff_11 = (FiltcV)     { Kernel[14], Kernel[19] };
  coeff_12 = (FiltcV)     { Kernel[24], 0 };

  mask0 = (PixelV){1, 2};

  //image board is black
  for (c=0; c < C-4; c++) {

    Img_0   = *((PixelV *) (&In_Img[c])      );
    Img_1   = *((PixelV *) (&In_Img[c+2])    );
    Img_2   = *((PixelV *) (&In_Img[c+C])    ); //continue
    Img_3   = *((PixelV *) (&In_Img[c+C+2])  ); //continue
    Img_4   = *((PixelV *) (&In_Img[c+2*C])  ); //continue
    Img_5   = *((PixelV *) (&In_Img[c+2*C+2])); //continue
    Img_6   = *((PixelV *) (&In_Img[c+3*C])  ); //continue
    Img_7   = *((PixelV *) (&In_Img[c+3*C+2])); //continue
    Img_8   = *((PixelV *) (&In_Img[c+4*C])  ); //continue
    Img_9   = *((PixelV *) (&In_Img[c+4*C+2])); //continue
    //Img_10, Img_11 and Img_12 are not continuos in memory
    Img_10  = (PixelV)     { In_Img[c+4],     In_Img[c+C+4] }; //continue
    Img_11  = (PixelV)     { In_Img[c+2*C+4], In_Img[c+3*C+4] }; //continue
    Img_12  = (PixelV)     { In_Img[c+4*C+4], 0 }; //continue

    for (r=1; r < R-4; r++) {

        t = (r+1)*R + c+2;
        S = dotp(Img_0,coeff_0);
        S = sumdotp(Img_1,  coeff_1, S);
        S = sumdotp(Img_2,  coeff_2, S); //continue
        S = sumdotp(Img_3,  coeff_3, S);
        S = sumdotp(Img_4,  coeff_4, S);
        S = sumdotp(Img_5,  coeff_5, S);
        S = sumdotp(Img_6,  coeff_6, S);
        S = sumdotp(Img_7,  coeff_7, S);
        S = sumdotp(Img_8,  coeff_8, S);
        S = sumdotp(Img_9,  coeff_9, S);
        S = sumdotp(Img_10,  coeff_10, S);
        S = sumdotp(Img_11,  coeff_11, S);
        S = sumdotp(Img_12,  coeff_12, S);

        // Rounding and Normalization: Data are Q2.2*(DATA_WIDTH-1), now Q2.DATA_WIDTH-1
        S = addnr(S, DATA_WIDTH-1, ROUNDBIT); //USE THE BUILT IN
        // Saturation
        S = clipu(S, 0, SATURATION); //USE THE BUILT IN

        Out_Img[t] = (Pixel)S;

        //load resh data
        new_data1 = *((PixelV *) (&In_Img[c+(r+4)*C]));
        new_data2 = *((PixelV *) (&In_Img[c+2+(r+4)*C]));
        new_data3 =   (PixelV  ) {In_Img[c+4+(r+4)*C], 0};

        // Move the window
        /*
          thirteen vectors:

          Img_0  = {A0, A1}
          Img_1  = {B0, B1}
          Img_2  = {C0, C1}
          Img_3  = {D0, D1}
          Img_4  = {E0, E1}
          Img_5  = {F0, F1}
          Img_6  = {G0, G1}
          Img_7  = {H0, H1}
          Img_8  = {I0, I1}
          Img_9  = {J0, J1}
          Img_10 = {K0, K1}
          Img_11 = {L0, L1}
          Img_12 = {M0,  0}

          Current Windonw:
          XX XX XX XX XX
          A0 A1 B0 B1 K0
          C0 C1 D0 D1 K1
          E0 E1 F0 F1 L0
          G0 G1 H0 H1 L1
          I0 I1 J0 J1 M0
          N0 N1 P0 P1 M1
          XX XX XX XX XX

          We want to load next line (N0, N1, P0, P1, M1)
          in vectors new_data1 and new_data2
          new_data1 = {N0, N1}
          new_data2 = {P0, P1}
          new_data3 = {M1,  0}

          Move each vector one line down and shuffle the vertical vector

          Img_0  = Img_2
          Img_1  = Img_3
          Img_2  = Img_4
          Img_3  = Img_5
          Img_4  = Img_6
          Img_5  = Img_7
          Img_6  = Img_8
          Img_7  = Img_9
          Img_8  = new_data1
          Img_9  = new_data2
          Img_10 = {K1, L0}
          Img_11 = {L1, M0}
          Img_12 = new_data3
        */

        Img_0  = Img_2; //continue
        Img_1  = Img_3; //continue
        Img_2  = Img_4; //continue
        Img_3  = Img_5; //continue
        Img_4  = Img_6; //continue
        Img_5  = Img_7; //continue
        Img_6  = Img_8; //continue
        Img_7  = Img_9; //continue
        Img_8  = new_data1; //continue
        Img_9  = new_data2; //continue
        Img_10 = (PixelV)shuffle(Img_10, Img_11, mask0); //continue
        Img_11 = (PixelV)shuffle(Img_11, Img_12, mask0); //continue
        Img_12 = new_data3; //continue

    }
    //last iteration
    t = (r+1)*R + c+2;
    S = dotp(Img_0,coeff_0);
    
    //continue
    S = sumdotp(Img_1,  coeff_1, S);
    S = sumdotp(Img_2,  coeff_2, S);
    S = sumdotp(Img_3,  coeff_3, S);
    S = sumdotp(Img_4,  coeff_4, S);
    S = sumdotp(Img_5,  coeff_5, S);
    S = sumdotp(Img_6,  coeff_6, S);
    S = sumdotp(Img_7,  coeff_7, S);
    S = sumdotp(Img_8,  coeff_8, S);
    S = sumdotp(Img_9,  coeff_9, S);
    S = sumdotp(Img_10,  coeff_10, S);
    S = sumdotp(Img_11,  coeff_11, S);
    S = sumdotp(Img_12,  coeff_12, S);

    // Rounding and Normalization: Data are Q2.2*(DATA_WIDTH-1), now Q2.DATA_WIDTH-1
    S = addnr(S, DATA_WIDTH-1, ROUNDBIT); //USE THE BUILT IN
    // Saturation
    S = clipu(S, 0, SATURATION); //USE THE BUILT IN

    Out_Img[t] = (Pixel)S;
  }
#endif
}
