#include <stdio.h>
#include <math.h>

int main (){
  float a, b,c;
  float x1 , x2, discr;
  //solicitar datos
  printf ("introduce a, b,c");
  scanf ("%f %f %f", &a , &b, &c);
  //caso donde a = 0
  if (a==0){
    if (b==0){
      printf(" solucion trivial\n");
    }else {
      x1=-c/b;
      printf ("la ecuacion es lineal\n");
  } 

}