#include <stdio.h>
#include <stdlib.h>
int task(void)
{
    int a;
    printf("確保する配列のサイズを入力(整数):");
    scanf("%d", &a);
    int *array = (int *)malloc(a);
    for (int i = a; i >= 0; i--)
    {
        array[a - i] = i;
    }
    for (int i = 0; i < a; i++)
    {
        printf("a[%d] = %d\n", i, array[i]);
    }
    free(array);
    return 0;
}
