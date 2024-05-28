#include "coder.h"

//#define HAS_IO

#ifndef HAS_IO

// input+ref-output data in const array to have a self-testing-application

// original image is 256 * 160 * 3 = 122880 byte for bitmap encoding
// input_small.data contains only upper part of image due to memory size restriction (2**16)
// size is 256 * 48 * 3 = 36864 byte for bitmap encoding
#define RGB_width   256
//RGB_height must be multiple of 16
//#define RGB_height  160
#define RGB_height  48

BYTE RGB_buffer[RGB_width*RGB_height*3u]={
#include "input_small.data"
};

unsigned char ref_out[]={
#include "refout_small.data"
};
unsigned char output[8192];
unsigned char* pOut = output;

void writebyte(BYTE b)
{
  *pOut++ = b;
}   
void writeword(WORD w)
{
    *pOut++ = w>>8;
    //*pOut++ = w/*&0xff*/;
    *pOut++ = w&0xff; //needed when no 8-bit memory access
}
void writearray(void* p, int n)
{
  char* pw = (char*)p;
  for (int i=0; i<n; i++) {
    writebyte(pw[i]);
  }
}

void init_input(struct image* img)
{
    img->RGB_buffer = (colorRGB *)RGB_buffer;
    img->width  = RGB_width;
    img->height = RGB_height;
} 
void fini_input(struct image* img)
{
}
 
void init_output()
{
    pOut = output;
}

#include <stdio.h>
int fini_output()
{ 
  int n = sizeof(ref_out);
  int error=0;
  int c=0;
  for (int i=0; i<n; i++) {
    if (output[i] != 0 && output[i] != ref_out[i]) {
      error++;
      c++;
      chess_report(i);
      chess_report(ref_out[i]);
      chess_report(output[i]);
    }
  }
  chess_report(n);
  chess_report(c);
  chess_report(error);
  
  // in case that stdio is available
  #if 1  
  FILE * fp = fopen("out.jpg","wb");
  for (int i=0; i<8192; i++) fputc(output[i],fp);
  fclose(fp);

  if (error==0) {
    printf("OK (nr=%d)\n",n);
  }
  else {
    printf("ERROR (nr=%d)\n",error);
  }
  
  c=0;
  for (int i=0; i<n && c<10; i++) {
    if (output[i] != 0 && output[i] != ref_out[i]) {
      c++;
      printf("error [%d] ok=%d got=%d\n", i, ref_out[i], output[i]);
    }
  }  
  if (error > c)
    printf("... more errors - see test.mem for complete dump\n");
  #endif
  return error;
}


#else

#include <stdio.h>
#include <stdlib.h>

void exitmessage(const char *error_message)
{
    printf("%s\n",error_message); exit(-1);
}

void init_input(struct image* img)
{
    int width,height;
    BYTE TMPBUF[256];
    int line;
    BYTE *RGB_buffer;
    FILE *fp_bitmap=fopen("testimg.bmp","rb");

    if (fp_bitmap==NULL) exitmessage("Cannot open bitmap file.File not found ?");
    if (fread(TMPBUF,1,54,fp_bitmap)!=54)
        exitmessage("Need a truecolor BMP to encode.");
    if ((TMPBUF[0]!='B')||(TMPBUF[1]!='M')||(TMPBUF[28]!=24))
        exitmessage("Need a truecolor BMP to encode.");
    width=(WORD)TMPBUF[19]*256+TMPBUF[18]; height=(WORD)TMPBUF[23]*256+TMPBUF[22];

    if ( (width%16!=0) || (height%16!=0)) {
        exitmessage("image size should be a multiple of 16\n");
    }

    printf("image width=%d height=%d\n", width, height);

    // The image we encode shall be filled with the last line and the last column
    // from the original bitmap, until width and height are divisible by 8
    // Load BMP image from disk and complete X
    RGB_buffer=(BYTE *)(malloc(3*width*height));
    if (RGB_buffer==NULL) exitmessage("Not enough memory for the bitmap image.");
    fread(RGB_buffer,1,height*width*3,fp_bitmap);

    img->RGB_buffer = (colorRGB *)RGB_buffer;
    img->width = width;
    img->height = height;

    fclose(fp_bitmap);
}

void fini_input(struct image* img)
{
    free(img->RGB_buffer);
}

// output file pointer
FILE *fp_jpeg_stream;

void init_output()
{
    fp_jpeg_stream=fopen("testimg.jpg","wb");
}

int fini_output()
{
    fclose(fp_jpeg_stream);
    return 0;
}

void writebyte(BYTE b)
{
  fputc((b),fp_jpeg_stream);
}

void writeword(WORD w)
{
    writebyte((w)>>8);
    writebyte((w)&0xff);
}

void writearray(void* p, int n)
{
  fwrite(p,1,n,fp_jpeg_stream);
}
#endif
