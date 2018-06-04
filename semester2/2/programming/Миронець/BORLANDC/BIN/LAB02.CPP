# include<conio.h>
# include<math.h>
# include<iostream.h>
# include<stdlib.h>
# include<stdio.h>
int main()
{clrscr();
float x=-5,y;
cout<<"begin\n";
for (int i=1; i<=15; i++, x+=0.5)
{y=x*x;
cout<<x<<"   "<<y<<"\n";}
cin>>x;
return 0;}