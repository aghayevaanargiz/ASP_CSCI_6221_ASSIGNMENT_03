#include <stdio.h>

void heapArray(void){
    // 1. Allocate memory for five integers
    int *arr = malloc(5* sizeof(int));

    // 2. Check whether allocation succeeded
    
    // 3. Store 10 in the first element
    arr[0] = 10;

    // 4. Print the first element
    printf("%d\n", arr[0]);

    // 5. Free the allocated memory
    free(arr);
}

void staticArray(int i)
{
    static int arr[5];
    
    arr[i]++;
    printf("%d\n", arr[i]);
}

void automaticArray(int i){
    int arr[5] = {0};

    arr[i] ++;
    printf("%d\n", arr[i]);
}


int main(void)
{
    staticArray(0);
    staticArray(0);
    staticArray(0);
    
    return 0;
}
