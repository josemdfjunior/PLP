#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  float nota1, nota2, media, mediapf, notapf;

  printf("Digite a sua AP1: ");
  scanf("%f", &nota1);

  printf("Digite a sua AP2: ");
  scanf("%f", &nota2);

  media = (nota1 + nota2) / 2;
  mediapf = (2 * media + notapf) / 3;

  if (media >= 8)
  {
    printf("Media do aluno = %.1f, parabéns você passou!\n", media);
  }
  else if (media < 8)
  {
    printf("Você foi para recuperação, digite a nota da sua PF: ");
    scanf("%f", &notapf);

    if (mediapf >= 6)
    {
      printf("Você conseguiu passar, parabéns!\n");
      printf("Media do aluno = %.1f\n", mediapf);
    }
    else if (mediapf < 6)
    {
      printf("Infelizmente você não passou\n");
      printf("Media do aluno = %.1f\n", mediapf);
    }
  }

  return 0;
}
