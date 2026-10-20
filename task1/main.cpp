#include <stdio.h>
#include <stdlib.h>

#define ARRAY_SIZE 100000

void heapArray(void){
    int *arr = malloc(ARRAY_SIZE * sizeof(int));
    if (arr == NULL) {
        return;
    }
    
    arr[0] = 10;
    
    
    printf("%d\n", arr[0]);

    free(arr);
}

void staticArray(int i)
{
    static int arr[ARRAY_SIZE];
    
    arr[i]++;
    printf("%d\n", arr[i]);
}

void automaticArray(int i){
    int arr[ARRAY_SIZE] = {0};

    arr[i] ++;
    printf("%d\n", arr[i]);
}


int main(void){
    staticArray(0);
    staticArray(0);
    staticArray(0);

    automaticArray(0);
    automaticArray(0);
    automaticArray(0);

    heapArray();

    return 0;
}
