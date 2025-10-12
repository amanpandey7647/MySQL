#include <stdio.h>
#include <string.h>

// q6.c - Accept different goods with number, price and date of purchase and display using structure
struct Good {
    char name[64];
    int quantity;
    float price;
    char date[32];
};

int main(void) {
    int n;
    printf("How many goods? ");
    if (scanf("%d", &n) != 1 || n <= 0) return 1;
    struct Good items[n];
    for (int i = 0; i < n; ++i) {
        printf("\nGood %d name: ", i+1);
        getchar();
        fgets(items[i].name, sizeof(items[i].name), stdin);
        if (items[i].name[strlen(items[i].name)-1] == '\n') items[i].name[strlen(items[i].name)-1] = '\0';
        printf("Quantity: "); scanf("%d", &items[i].quantity);
        printf("Price: "); scanf("%f", &items[i].price);
        printf("Date of purchase (e.g. 2025-10-12): "); getchar();
        fgets(items[i].date, sizeof(items[i].date), stdin);
        if (items[i].date[strlen(items[i].date)-1] == '\n') items[i].date[strlen(items[i].date)-1] = '\0';
    }

    printf("\nGoods entered:\n");
    for (int i = 0; i < n; ++i) {
        printf("%d. %s - Qty: %d - Price: %.2f - Date: %s\n", i+1, items[i].name, items[i].quantity, items[i].price, items[i].date);
    }
    return 0;
}
