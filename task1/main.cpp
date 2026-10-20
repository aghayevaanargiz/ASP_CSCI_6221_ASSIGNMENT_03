#include <stdio.h>

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
