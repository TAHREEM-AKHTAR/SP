#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
int main(int argc, char *arg[])
{

int fptr1=open("arg[1]",O_RDONLY);
int fptr2=fopen("arg[1]",O_WRONLY);
	
	char ch[100];
	if(argc==3)
	{
		
		int n;
		if( fptr1==NULL)
		{
			printf("cannot open file %s \n",arg[1]);
			exit(0);

		}
		
		if( fptr2==NULL)
		{
			printf("cannot open file %s \n",arg[1]);
			exit(0);

		}
		printf("code reached");
		for(;;)
		{
			n=read(fptr1,ch,99);
			if(n<=0)
			{
				close(fptr1);	
				return 0;

			}
			write(fptr2,ch,n);

		}
		close(fptr1);
		close(fptr2);
		
	

		

	}
	else 
	{
		printf("invalid no. of args");
	}

	
	return 0;
	

}
