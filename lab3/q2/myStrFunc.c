
int isPalindrome(char *arr,int size)
{
	int l=0;
	int len=size-1;
	while( len>l)
	{
		if(arr[l++]!=arr[len--])
		{
			
			return -1;

		}
	}

	return 1;
}
