#include<stdio.h>
#include"myStr.h"
#include"myMath.h"
int main()
{
	

	int val;
	val=isPalindrome("abab",4);
	if(val==1)
		printf("is Palindrome\n");
	else
		printf(" not Palindrome\n");

	printf("isEqual...\n");

	int a,b;
	printf("Enter first no.:");
	scanf("%d",&a);
	printf("Enter second no.:");
	scanf("%d",&b);
	int IsEqual=isEqual(a,b);
	if(IsEqual==1)
		printf("both are equal\n");
	else
		printf("both are not equal\n");

	printf("swapping...\n");

	int x,y;
	printf("Enter first no.:");
	scanf("%d",&x);
	printf("Enter second no.:");
	scanf("%d",&y);
	
	swap(&x,&y);
	printf("\nvalue of a after swapping: %d",x);
	printf("\nvalue of b after swapping: %d",y);
	printf("\n");

	return 0;
	
	
}
