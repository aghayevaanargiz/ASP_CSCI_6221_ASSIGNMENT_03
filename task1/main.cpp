#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ARRAY_SIZE 100000
#define ITERATIONS 100000

volatile long long checksum = 0;


void staticArray(void){
    static volatile int arr[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; i++) {
        arr[i] = i;
    }

    checksum += arr[0] + arr[ARRAY_SIZE / 2] + arr[ARRAY_SIZE - 1];
}


void automaticArray(void){
    volatile int arr[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; i++) {
        arr[i] = i;
    }

    checksum += arr[0] + arr[ARRAY_SIZE / 2] + arr[ARRAY_SIZE - 1];
}


void heapArray(void){
    volatile int *arr = malloc(ARRAY_SIZE * sizeof(int));

    if (arr == NULL) {
        fprintf(stderr, "Memory allocation failed.\n");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {
        arr[i] = i;
    }

    checksum += arr[0] + arr[ARRAY_SIZE / 2] + arr[ARRAY_SIZE - 1];

    free((void *)arr);
}


int main(void){
    clock_t start;
    clock_t end;
    double elapsed;

    printf("C Memory Allocation Benchmark\n");
    printf("Array size: %d integers\n", ARRAY_SIZE);
    printf("Iterations: %d\n\n", ITERATIONS);

    start = clock();

    for (int i = 0; i < ITERATIONS; i++) {
        staticArray();
    }

    end = clock();
    elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Static array:    %.6f seconds\n", elapsed);


    start = clock();

    for (int i = 0; i < ITERATIONS; i++) {
        automaticArray();
    }

    end = clock();
    elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Automatic array: %.6f seconds\n", elapsed);


    start = clock();

    for (int i = 0; i < ITERATIONS; i++) {
        heapArray();
    }

    end = clock();
    elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Heap array:      %.6f seconds\n", elapsed);

    printf("\nChecksum: %lld\n", checksum);

    return 0;
}
