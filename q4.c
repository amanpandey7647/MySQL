#include <stdio.h>

// q4.c - Compute sum of even numbers and sum of odd numbers using a function
void sums(int arr[], int n, long *evenSum, long *oddSum) {
    *evenSum = *oddSum = 0;
    for (int i = 0; i < n; ++i) {
        if (arr[i] % 2 == 0) *evenSum += arr[i];
        else *oddSum += arr[i];
    }
}

int main(void) {
    int n;
    printf("How many numbers? ");
    if (scanf("%d", &n) != 1 || n <= 0) return 1;
    int arr[n];
    printf("Enter %d integers:\n", n);
    for (int i = 0; i < n; ++i) scanf("%d", &arr[i]);

    long evenSum, oddSum;
    sums(arr, n, &evenSum, &oddSum);
    printf("Sum of even numbers: %ld\n", evenSum);
    printf("Sum of odd numbers: %ld\n", oddSum);
    return 0;
}
