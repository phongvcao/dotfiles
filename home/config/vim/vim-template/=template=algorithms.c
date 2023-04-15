#include <stdio.h>
#include <stdlib.h>


#include <pthread.h>
// C_USAGE:
//     #define NUM_THREADS 4
//     #define ARRAY_SIZE 1000000
//
//     int array[ARRAY_SIZE];
//
//     void *computeSum(void *threadID) {
//         int i;
//         long tid = (long)threadID;
//         int start = tid * (ARRAY_SIZE / NUM_THREADS);
//         int end = start + (ARRAY_SIZE / NUM_THREADS);
//         int sum = 0;
//         for (i = start; i < end; i++) {
//             sum += array[i];
//         }
//         printf("Thread %ld: Sum = %d\n", tid, sum);
//         pthread_exit(NULL);
//     }
//
//     int main() {
//         int i;
//         long t;
//         pthread_t threads[NUM_THREADS];
//         for (i = 0; i < ARRAY_SIZE; i++) {
//             array[i] = i + 1;
//         }
//         for (t = 0; t < NUM_THREADS; t++) {
//             printf("Creating thread %ld\n", t);
//             pthread_create(&threads[t], NULL, computeSum, (void *)t);
//         }
//         for (t = 0; t < NUM_THREADS; t++) {
//             pthread_join(threads[t], NULL);
//         }
//         printf("Done.\n");
//         pthread_exit(NULL);
//     }
//
