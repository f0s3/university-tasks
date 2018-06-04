# include<conio.h>
# include<math.h>
# include<iostream.h>
# include<stdlib.h>
# include<stdio.h>
int main()
{clrscr();
float x=-5,y;
cout<<"begin\n";
for (int i=-5; i<=5; i++, x+=0.3)
{ if(x<0) y=x*x; else  if (x>3) y=sin(x+1); else y=cos(x);
cout<<x<<"                    "<<y<<"\n";}
cin>>x;
return 0;}