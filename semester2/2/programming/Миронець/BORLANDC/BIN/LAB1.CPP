#include<math.h>
#include<conio.h>
#include<iostream.h>
#include<stdlib.h>
#include<stdio.h>
int main()
{clrscr();
float u,y,M_pi;int unsigned i;
printf("Start\n");
printf("Vveditj x\n");
scanf("%f",&y);
if(y>=2) {u=sqrt(y*y+y+1.5); i=1;} else
if (y<=-2) {u=y*log(fabs(y*y*y+2))+M_pi; i=3;}
else {u=M_pi+pow(cos(y+1.2),2); i=2;}
printf("u dorivnjye %7.3f,za metodom %d",u,i);
cin>>y;
return 0;
}