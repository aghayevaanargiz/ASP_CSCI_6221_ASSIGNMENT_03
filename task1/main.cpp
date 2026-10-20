#include <stdio.h>

void staticArray(int i)
{
    static int arr[5];

    arr[0] = 10; 
    printf("%d", arr[i]);
}

int main(void)
{
    staticArray(0);
    return 0;
}
