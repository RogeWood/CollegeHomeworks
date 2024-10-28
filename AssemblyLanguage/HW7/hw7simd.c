#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <emmintrin.h>
struct timespec diff(struct timespec start, struct timespec end);

#define height 17280
#define width  30720

int main(void)
{
   struct timespec start, end;

   void *ptr;
   int *pBitmap, row, col;

   //pBitmap = (int*) malloc(height * width * sizeof(int));
   posix_memalign(&ptr, 16, height * width * sizeof(int));
   pBitmap = (int*) ptr;

   for (row=0; row<height; row++) {
      for (col=0; col<width; col++) {
         pBitmap[col+row*width] = rand();
      }
   }

   __m128i *pBuf128=(__m128i *)pBitmap;
   __m128i pixel, red, green, blue, alpha, bw;
   clock_gettime(CLOCK_MONOTONIC, &start);
   for (row = 0; row < height/4; row++) {
      for(col = 0; col < width/4; col++) {
         // pixel = pBitmap[col+row*width];
         pixel = _mm_sub_epi32 (pixel, pixel); // set to zero
         pixel = _mm_add_epi32(pixel, pBuf128[col+row*(width/4)]); // mov pBuf128
         // alpha = (pixel >> 24) & 0xff;
         alpha = _mm_and_si128(_mm_bsrli_si128(pixel, 24), _mm_set_epi32(0xff, 0xff, 0xff, 0xff)); // shift 24 and 0xff
         // red = (pixel >> 16) & 0xff;
         red = _mm_and_si128(_mm_bsrli_si128(pixel, 16), _mm_set_epi32(0xff, 0xff, 0xff, 0xff));
         // green = (pixel >> 8) & 0xff;
         green = _mm_and_si128(_mm_bsrli_si128(pixel, 8), _mm_set_epi32(0xff, 0xff, 0xff, 0xff));
         // blue = pixel & 0xff;
         blue = _mm_and_si128(pixel, _mm_set_epi32(0xff, 0xff, 0xff, 0xff));
         // bw = (int) (red*0.299 + green*0.587 + blue*0.114);
         bw = (__m128i)_mm_mul_ps((__m128)red, _mm_set_ps(0.299,0.299,0.299,0.299));
         bw = _mm_add_epi32(bw, (__m128i)_mm_mul_ps((__m128)green, _mm_set_ps(0.587,0.587,0.587,0.587)));
         bw = _mm_add_epi32(bw, (__m128i)_mm_mul_ps((__m128)blue, _mm_set_ps(0.114,0.114,0.114,0.114)));
         // pBitmap[col + row*width] = (alpha<<24) + (bw<<16) + (bw<<8) + (bw);
         pBuf128[col + row*(width/4)] = _mm_add_epi32(_mm_add_epi32(_mm_bslli_si128(alpha, 24), _mm_bslli_si128(bw, 16)), _mm_add_epi32(_mm_bslli_si128(bw, 8), bw));
      }
   }
   

   clock_gettime(CLOCK_MONOTONIC, &end);
   printf("time: %ld\n", diff(start, end).tv_nsec);
   return 0;
}

struct timespec diff(struct timespec start, struct timespec end)
{
   struct timespec temp;
   if ((end.tv_nsec-start.tv_nsec)<0) {
   temp.tv_sec = end.tv_sec-start.tv_sec-1;
   temp.tv_nsec = 1000000000+end.tv_nsec-start.tv_nsec;
   } else {
   temp.tv_sec = end.tv_sec-start.tv_sec;
   temp.tv_nsec = end.tv_nsec-start.tv_nsec;
   }
   return temp;
}