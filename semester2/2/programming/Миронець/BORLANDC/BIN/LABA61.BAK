/*Laba6*/
#include <conio.h>
#include <math.h>
#include <stdio.h>
main ()
{float A,B,C,x,y,Max,Min;
int i;
clrscr();
printf("enter left boundary for x A=");
scanf("%f",&A);
printf("enter right boundary for x B=");
scanf("%f",&B);
printf("enter pitch for x C=");
scanf("%f",&C);
printf(".............................\n");
printf("I   i I   x    I     y(x)   I\n");
printf(".............................\n");
x=A; i=1;
Max=3.14+sqrt(fabs(sin(x)/exp(x+3.14))); Min=Max;
while (x<=B+C/2)
{ if (x>=1.) y=pow(sin(x*x*x),2)+x*log(x+1);
      else if (x<-1.) y=3.14+sqrt(fabs(sin(x)/exp(x+3.14)));
	    else y=pow(cos(x),2)+1.2E-6;

printf("I %3d I %4.1f I %11.6f      I\n",i,x,y);
if (Max<y) Max=y;
if (Min>y) Min=y;
++i;
x=x+C;}
printf(".............................\n");
printf("Max+%11.6f Min=%11.6f",Max,Min);
getch();
}

