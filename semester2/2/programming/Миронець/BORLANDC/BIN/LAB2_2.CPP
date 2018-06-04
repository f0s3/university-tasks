#include <stdio.h>
#include <conio.h>

void main()
{

char ch;

clrscr();

printf("Enter char\n");
scanf("%c",&ch);

switch (ch){

	case 'i':printf("[if]");break;
	case 'f':printf("[for]");break;
	case 'w':printf("[while]");break;
	case 'r':printf("[repeat]");break;
	default:printf("Error");

}

getch();
}