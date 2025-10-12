#include <stdio.h>
#include <stdlib.h>

// q7.c - Read two matrices and perform addition and subtraction
int main(void) {
    int r, c;
    printf("Enter rows and columns: ");
    if (scanf("%d %d", &r, &c) != 2 || r <= 0 || c <= 0) return 1;
    int m1[r][c], m2[r][c];
    printf("Enter elements of first matrix (%d x %d):\n", r, c);
    for (int i=0;i<r;i++) for (int j=0;j<c;j++) scanf("%d", &m1[i][j]);
    printf("Enter elements of second matrix (%d x %d):\n", r, c);
    for (int i=0;i<r;i++) for (int j=0;j<c;j++) scanf("%d", &m2[i][j]);

    printf("\nAddition result:\n");
    for (int i=0;i<r;i++) {
        for (int j=0;j<c;j++) printf("%d ", m1[i][j] + m2[i][j]);
        printf("\n");
    }

    printf("\nSubtraction result (first - second):\n");
    for (int i=0;i<r;i++) {
        for (int j=0;j<c;j++) printf("%d ", m1[i][j] - m2[i][j]);
        printf("\n");
    }
    return 0;
}
