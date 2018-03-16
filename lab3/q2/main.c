#include <stdio.h>
#include "myStr.h"
int main()
{
	int val;
	val=isPalindrome("abab",4);
	if(val==1)
		printf("is Palindrome\n");
	else
		printf(" not Palindrome\n");
	return 0;
}
