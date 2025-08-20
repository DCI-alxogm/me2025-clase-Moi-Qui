#include <stdio.h>

int main() {
    int numero;

    // Pedir número al usuario
    printf("Ingrese un numero entero: ");
    scanf("%d", &numero);

    // Verificar si es par o impar
    if (numero % 2 == 0) {
        printf("El numero %d es PAR.\n", numero);
    } else {
        printf("El numero %d es IMPAR.\n", numero);
    }

    return 0;
}