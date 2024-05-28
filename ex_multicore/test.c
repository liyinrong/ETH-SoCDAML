/* EX 7 is based on PULP training, for license see convolution/convolution.h */
/* START OF SUPPORT */

#include <stdio.h>
#include <sys/types.h>
#include "work.h"
#include <sys/time.h>
#include "time.h"
#include "convolution/convolution.h"

/* If no EXERCISE was defined through environment variables enable EX1 now */
#if !defined(EX1) && !defined(EX2) && !defined(EX3) && !defined(EX4) && !defined(EX5) && !defined(EX6) && !defined(EX7) && !defined(EX8) && !defined(EX9)
#define EX1
#endif

#if !defined(NTHREADS)
#define NTHREADS 4
#endif

void benchmark(void (*fn)(void), const char *label)
{
  unsigned long long int start, end;
  start = my_get_time();
  fn();
  end = my_get_time();
  printf("[%s] Elapsed time = %llu usec.\n", label, end - start);
}

/* END OF SUPPORT */

#include <omp.h>

/* EX 1 - Spawn a parallel region from the "print" code
 * 1a) Detect number of threads and thread ID (hint: omp_get_num_threads(), omp_get_thread_num())
 * 1b) Do it for 2, 4, 8, 16 threads
 */
void hello_world()
{
  #pragma omp parallel num_threads(4)
  printf("Hello World! I am thread number %d out of %d!\n", omp_get_thread_num(), omp_get_num_threads());
}

/* EX 2 - Racing and Synchronization
 * 2a) Execute the `accumulate` function as-is to check that it calculates the expected result.
 * 2b) Parallelize the accumulation loop and check the result.
 * 2c) If the result is not correct, how can you fix it?
 * (2d) What happens to the execution time?)
 */
void accumulate()
{
  int sum = 0;
  #pragma omp parallel for shared(sum)
  for (unsigned i = 0; i < 128; ++i)
  {
    #pragma omp critical
    sum += 1;
  }
  printf("sum: %0u\n", sum);
}

/* EX 3 - Deadlocks
 * 3a) Read the code of the function below and describe what it does.  Then execute the function
 *     as-is to ensure it works as you expect.
 * 3b) Parallelize the `for` loop.  What happens?
 * 3c) How can you solve this problem? You can modify the C code to avoid deadlocks. The "owned"
 *     vector must remain shared among the threads.
 */
void deadlock()
{
  int owned[4] = {-1, -1, -1, -1};
  #pragma omp parallel for
  for (unsigned i = 0; i < 4; ++i)
  {
    unsigned lock_a = i == 3 ? 0:i;
    unsigned lock_b = i != 3 ? i+1:3;
    while (owned[lock_a] != i)
    {
      if (owned[lock_a] == -1)
      {
        owned[lock_a] = i;
      }
    }
    printf("Iteration %u now owns variable %u.\n", i, lock_a);
    while (owned[lock_b] != i)
    {
      if (owned[lock_b] == -1)
      {
        owned[lock_b] = i;
      }
    }
    printf("Iteration %u now owns variable %u.\n", i, lock_b);
    owned[lock_a] = -1;
    owned[lock_b] = -1;
    printf("Iteration %u has released both %u and %u.\n", i, lock_a, lock_b);
  }
}

/* EX 4 - Data parallelism: parallel loop ** 1 to 16 THREADS **
 * 4a) Parallelize loop w/static scheduling
 * 4b) Parallelize loop w/dynamic scheduling for chunks = NITER/NTHR (same as static) and 1 (finest granularity)
 * 4c) Same as 4a + 4b, with 102400 loop iterations and work(10)
 */
void parallel_loop()
{
  unsigned int i;
//  #pragma omp parallel for num_threads(4) schedule(dynamic,1)
  #pragma omp parallel for num_threads(4)
  for (i = 0; i < 102400; i++)
  {
    //     printf("%hu: I am executing iteration %hu!\n", omp_get_thread_num(), i);

    /* Simulating some work */
//    work(1000000);
    work(10);
    //     printf("%hu: Done with iteration %hu!\n", omp_get_thread_num(), i);
  }
}

/* EX 5 - Data parallelism: unbalanced parallel loop ** 4 THREADS **
 * 5a) LOOP 1: Parallelize loop w/static scheduling
 * 5b) LOOP 1: Parallelize loop w/dynamic scheduling, for chunks of 32, 16, 8, 4 ,1 (128 iter)
 *
 */
void unbalanced_loop()
{
  unsigned int i;
  #pragma omp parallel for num_threads(4) schedule(static)
//  #pragma omp parallel for num_threads(4) schedule(dynamic, 8)
  for (i = 0; i < 128; i++)
  {
    //       printf("%hu: I am executing iteration %hu!\n", omp_get_num_threads(), i);
    work((i >> 2) * 1000000);
  }
}

/* EX 6 - Data parallelism: balanced small parallel loop ** 4 THREADS **
 * 6a) Parallelize loop with static and dynamic scheduling, for chunks of 32, 16, 8, 4, 1 and for work = 1, 10, 100, 1000
 */
void chunking_loop()
{
  unsigned int i;

#define W 10 //,10,100,1000
  #pragma omp parallel for num_threads(4) schedule(dynamic, 1)
  for (i = 0; i < 1024 * 256; i++)
  {
    //       printf("%hu: I am executing iteration %hu!\n", omp_get_num_threads(), i);
    work(W);
  }
}

/* EX 7 Convolution kernel
 * 7a) How can Conv5x5_Scalar be parallelized with OpenMP? Add the relevant
 *     pragma to the code.
 *       * This is loop based code, so we will probably want to go with a
 *         parallel for. There are many loops to choose from, which one should
 *         we select? Is this workload balanced or unbalanced? Select a
 *         reasonable schedule.
 *       * Assign the correct data sharing (shared, private, firstprivate, ...)
 *         to ensure that each thread is working on the right data. Hint: By
 *         adding default(none) to the pragma, OpenMP will force you to
 *         explicitly define data sharing for each variable. This is useful to
 *         make sure you don't miss assigning a data sharing attribute.
 *       * Race conditions: Does your selected parallelization method cause any
 *         race conditions?
 * 7b) Run the OpenMP kernel a few times. Do you always get the correct result?
 *     If you do, explain which part of the OpenMP pragma that ensures this. If
 *     you don't get the right results, you should refine your solution.
 * 7c) Compare the execution time of the code with 1, 2, and 4 threads. Use
 *     Amdahl's law to calculate how large portion of the code that is
 *     parallelized. Can we increase this part?
 */
void Conv5x5_Scalar()
{

  // Initialize the output.
  Pixel Out[IMG_DIM];
  InitZero(Out, IMG_DIM);

  int k, w, t;
  Filtc coeff;
  Pixel data;
  int S;

  // image board is black
//  #pragma omp parallel for num_threads(4) schedule(dynamic, 1) private(k, w, t, coeff, data, S)
  #pragma omp for schedule(dynamic, 1) private(k, w, t, coeff, data, S)
  for (int r = 2; r < IMG_ROW - 2; r++)
  {
    //#pragma omp parallel for num_threads(4) schedule(dynamic, 1) private(k, w, t, coeff, data, S)
    for (int c = 2; c < IMG_COL - 2; c++)
    {

      S = 0;
      t = r * IMG_ROW + c;
      // move in the window
      /* Coordinate window
          (-2;-2) (-2;-1) (-2; 0) (-2;+1) (-2;+2)
          (-1;-2) (-1;-1) (-1; 0) (-1;+1) (-1;+2)
          ( 0;-2) ( 0;-1) ( 0; 0) ( 0;+1) ( 0;+2)
          (+1;-2) (+1;-1) (+1; 0) (+1;+1) (+1;+2)
          (+2;-2) (+2;-1) (+2; 0) (+2;+1) (+2;+2)
      */
      for (int i = -2; i <= 2; i++)
      {
        for (int j = -2; j <= 2; j++)
        {
          k = (r + i) * IMG_ROW + (c + j); // coeff for one dimension matrix
          data = In_Img[k];
          w = (i + 2) * FILT_WIN + (j + 2);
          coeff = Filter_Kern[w];
          S += (int)(coeff * data);
        }
      }

      // Rounding
      S = S + ROUNDBIT;
      // Normalization: Data are Q2.2*(DATA_WIDTH-1), now Q2.DATA_WIDTH-1
      S = S >> (DATA_WIDTH - 1);
      // Saturation
      S = S > SATURATION ? SATURATION : S;
      S = S < 0 ? 0 : S;

      Out[t] = (Pixel)S;
    }
  }

  // Check that the results are correct.
  checkresult(Out, Gold_Out_Img, IMG_DIM);
}

/* EX 8 - Task Parallelism w/sections
 * 8a) Create a parallel region with 4 threads. Use thread IDs to execute different WORK functions on different threads.
 * 8b) Create a parallel region with 4 threads. Achieve the same work partitioning as 5a using SECTIONS.
 */
void sections()
{
  int i;
  #pragma omp parallel sections
  {
  #pragma omp section
  {
    work(10000);
    //printf("%hu: Done with first elaboration!\n", omp_get_thread_num());
  }
  #pragma omp section
  {
    work(20000);
    //printf("%hu: Done with second elaboration!\n", omp_get_thread_num());
  }
  #pragma omp section
  {
    work(30000);
    //printf("%hu: Done with third elaboration!\n", omp_get_thread_num());
  }
  #pragma omp section
  {
    work(40000);
    //printf("%hu: Done with fourth elaboration!\n", omp_get_thread_num());
  }
  }
}

/* EX 9 - Task Parallelism w/tasks
 * 9a) Create a parallel region with 4 threads. Use SINGLE directive to allow only one thread to execute the loop. Use TASK directive to outline tasks.
 * 9b) Change number of iterations to 1024 and work to 100000. Parallelize with TASK directive.
 * 9c) Same setup as 9b. Parallelize with SECTIONS instead of TASK. Comment on ease of coding and performance of the various parallelization schemes.
 */
void tasks()
{
  unsigned int i;
  #pragma omp parallel num_threads(4)
  {
    #pragma omp single
//    #pragma omp for schedule(static)
      for (i = 0; i < 4; i++)
      {
        #pragma omp task
        {
          work((i + 1) * 10000);
          printf("%hu: Done with elaboration\n", omp_get_thread_num());
        }
      }
  }
}

int main(int argc, char **argv)
{

#ifdef EX1
  benchmark(&hello_world, "Parallel Region");
#endif

#ifdef EX2
  benchmark(&accumulate, "Accumulate");
#endif

#ifdef EX3
  deadlock();
  printf("If you are reading this, your code did *not* deadlock!\n");
#endif

#ifdef EX4
  benchmark(&parallel_loop, "Loop");
#endif

#ifdef EX5
  benchmark(&unbalanced_loop, "Unbalanced Loop");
#endif

#ifdef EX6
  benchmark(&chunking_loop, "Chunking Loop");
#endif

#ifdef EX7
  benchmark(&Conv5x5_Scalar, "Convolution");
#endif

#ifdef EX8
  benchmark(&sections, "Sections");
#endif

#ifdef EX9
  benchmark(&tasks, "Tasks");
#endif

  return 0;
}
