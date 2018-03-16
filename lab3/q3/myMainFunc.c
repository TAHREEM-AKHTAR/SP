int isEqual(int x,int y)
{
	if(x==y)
		return 1;
	else 
		return -1;
}

void swap(int *a,int *b)
{
	*a=*a+*b;
	*b=*a-*b;
	*a=*a-*b;
}
