#include <stdio.h>
#include <math.h>

int main() {
    float x[5];
    int i;

    printf("Introduce 5 numeros positivos:\n");
    for (i = 0; i < 5; i++) {
        printf("x[%d]: ", i + 1);
        scanf("%f", &x[i]);
        if (x[i] <= 0) {
            printf("Debe ser positivo. Intenta de nuevo.\n");
            i--;
        }
    }

    printf("\n%-10s %-15s %-15s %-15s\n", "x", "x^2", "ln(x)+1", "exp(x)+cos(x)");
    printf("-------------------------------------------------------------------\n");

    for (i = 0; i < 5; i++) {
        float x2 = pow(x[i], 2);
        float logx = log(x[i]) + 1;
        float ex_cosx = exp(x[i]) + cos(x[i]);
        printf("%-10.4f %-15.4f %-15.4f %-15.4f\n", x[i], x2, logx, ex_cosx);
    }}