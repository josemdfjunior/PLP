#include <stdio.h>
#include <stdlib.h>

int main(){
    float f, c;

    printf("Informe a temperatura em Fahrenheit: ");
    scanf("%f", &f);

    c = 5 * ((f - 32) / 9);

    printf("A temperatura em Celsius é de %.2f °C\n", c);

    return 0;
}
