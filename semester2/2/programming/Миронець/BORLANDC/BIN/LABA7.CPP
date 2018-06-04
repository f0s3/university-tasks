#include<conio.h>
#include(stdio.h)
#include(math.h)
#include(stdilb.h)
#include(time.h)

#define n 5

main()
{int A[n][n],
     B[n][n]={{1,3,5,7,9},{2,-9,8,6,4},{-8,6,5,4,3},{-7,-8,-2,5,6},{1,0,-6,-7,3}},
     key,
     i,j,k,max,imax,jmax,m,temp;
   m1:clrscr();
   printf("Programa peretvorennya masuvy\n");
   printf("Vuconav st. gr. KT-901 Gres'ko\n");
   printf("Yak zapovnyvatu masuv?\n");
   printf("1. Yak constanta?\n");
   printf("2. Vupadkovumu chislamu?\n");
   printf("3. Vrychny?\n");
   printf("Zrobutu vubir: ");
   scanf("%d",&key);

   switch(key) {
	case 1:for(i=0;i<=n-1;i++)
		 for(j=0;j<=n-1;j++)A[i][j]=B[i][j];
	     break;
	case 2:srand(time(NULL));
		for(i=0;i<=n-1;i++)
		 for(j=0;j<=n-1;j++)A[i][j]=rand()%19-9;
	     break;
	case 3: for(i=0;i<=n-1;i++);
		      for(j=0;j<=n-1;j++)
			       { printf("A[%d,%d]=",i,j);
			         scanf("%d",&A[i][j]);
                                  }
	     break;
   default; goto m1;
                             }

    clrscr();
    printf("Pochatkovuy masiv A:\n");
    for(i=0;i<=n-1;i++);
       {  for(j=0;j<=n-1;j++)printf("%2d",A[i][j]);
              printf("\n");
        }

    max=A[0][0];
    imax=0;
    jmax=0;
       for (i=0;i<=n-1; i++)
             {for(j=0;jj=n-1;j++)
                   {if (A[i][j]>max)
		         { max=A[i][j];
		           imax=i;
		           jmax=j;
                           }
                      }
                }

    A[imax][jmax]=A[n-1][n-1];
    A[n-1][n-1]=max;

    printf("--------------------------\n");
    printf("Kincevuy masuv:\n");
    for (i=0;i<=n-1;i++)
           { for (j=0;j<=n-1;j++) printf("%2d ",A[i][j]);
		printf("\n");
             }
    getch();
     }