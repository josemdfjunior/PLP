#include <iostream>
using namespace std;

int main()
{
  float ap1, ap2, pf, media, mediapf;

  cout << "Nota 1: ";
  cin >> ap1;

  cout << "Nota 2: ";
  cin >> ap2;

  media = (ap1 + ap2) / 2;

  if (media < 8)
  {
    mediapf = (media * 2) / 3;
    media = mediapf;
  }

  cout << "Média: " << media;

  return 0;
}
