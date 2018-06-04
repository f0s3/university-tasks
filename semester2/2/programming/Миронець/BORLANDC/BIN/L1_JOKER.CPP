#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<Math.h>
const pi=3.142;
double Factorial(double i){
  double g=1;
  if ((i==0)||(i==1)) return g;
    else  { g=i*Factorial(i-1);return g;};
}
double First(double x){
  double sum=0;
  double y=0;
  int i;
  int z=1;
  printf(" \n Example 1 \n ");
  for(i=1;i<=10;i++){
    z=-z;
    y=z*(pow(i+pi,0.5)*sin(i*x))/(Factorial(i+2)+exp(i*x));
    sum+=y;
    printf("%d,%f.%f",i,"      ", sum, "        ",y);
    printf(" \n ");
  }
  printf("\n Result1: %f", sum);
  return sum;
};
double Second(double x){
  double sum=0;
  double y=0;
  int i=1;
  int z=1;
  double eps=1E-8;
  printf("\n Example 2 \n");
  do{
     sum+=y;
     z=-z;
     y=z*(pow(i+pi,0.5)*sin(i*x))/(Factorial(i+2)+exp(i*x));
     i+=1;
     printf("%d  , %f  , %f  ",i, sum,y);
     printf(" \n ");
  }
  while (fabs(y)>=eps);
  printf("\n Result2: %f", sum);
  return sum;
};
void main(){
  clrscr();
  First(0.85);
  Second(0.85);
}