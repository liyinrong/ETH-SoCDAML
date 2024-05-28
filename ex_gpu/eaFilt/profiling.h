#ifndef __PROFILING_H__
#define __PROFILING_H__

/*
 * ============================================================================
 * Author:         Bjoern Forsberg (bjoernf@iis.ee.ethz.ch)
 * Author:         Daniele Palossi (daniele.palossi@iis.ee.ethz.ch)
 *
 * Description:    CUDA port (from OpenCL) of the energy-efficient near-optimal
 *                 planner for the SHERPA project. This version allocates all
 *                 CUDA memory as pinned memory on the host, and is intended to
 *                 run on NVIDIAs Tegra devices. For discrete GPUs, i.e., GPUs
 *                 that are connected via the PCI bus, the program would
 *                 probably perform better if the data was copied to the global
 *                 memory of the GPU itself.
 *
 * Paper:          http://dl.acm.org/citation.cfm?id=2911712
 * ============================================================================
 *
 * profiling.h
 *
 * This file contains profiling functions.
 *
 * ============================================================================
 */


// ----------------------------
// --- TIMERS FOR PROFILING ---
// ----------------------------

/**
 * Used for simple timekeeping with us resolution.
 */
typedef struct {
  struct timeval start;
  struct timeval end;
} test_timer_t;

/**
 * Record start time in test_timer_t t.
 */
void timer_start(test_timer_t * t) {
  gettimeofday(&t->start, NULL);
}

/**
 * Record end time in test_timer_t t.
 */
void timer_end(test_timer_t * t) {
  gettimeofday(&t->end, NULL);
}

/**
 * Calculate elapsed time for test_timer_t t.
 */
long int timer_delta(test_timer_t * t) {
  return (t->end.tv_sec*1e6 + t->end.tv_usec) - (t->start.tv_sec*1e6 + t->start.tv_usec);
}

#endif
