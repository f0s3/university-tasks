#include <stdio.h>
#include <conio.h>
#include <math.h>

void main()
{

float a,x,y;

clrscr();
printf("a=");
scanf("%f",&a);

printf("x=");
scanf("%f",&x);

if (a>0 && a<1)
	y=a*pow((1/tan(x*3.14/180)),2);
else
	y=a-a*pow(cos(x*3.14/180),2);

printf("y=%f",y);


getch();
}