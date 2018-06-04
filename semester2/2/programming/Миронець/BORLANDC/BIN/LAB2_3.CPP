#include <stdio.h>
#include <conio.h>
#include <math.h>

void main()
{

float x,y;

do
{

clrscr();
printf("x=");
scanf("%f",&x);

printf("y=");
scanf("%f",&y);

if (x*x+y*y<=9 && x*x+pow((y-3),2)<=9)
	printf("+");
else
	printf("-");

}
while(getch()!=27);


}