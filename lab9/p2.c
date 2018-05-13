#include<stdio.h>
#include <fcntl.h> // if you are using constant O_RDONLY
int main()
{
	char buff[1024];
	int fd1 = open ("f2", O_RDONLY);
	int fd3= open("ErrorAndOutput.txt",O_CREAT|O_RDONLY|O_WRONLY,0777);
	int n;
	if(fd1 == -1)
	{
		close(2);
		dup(fd3);
		char arr[]="Error";
		write(fd3, arr, 6);
		
	

		
	}
	else
	{
		close(1);

		dup2(fd3,1);
		for(;;)
		{
			n = read (fd1, buff, 1023);
			if (n <= 0){
				close(fd1);
				close(fd3);
				return 0;
			}
			write(fd3, buff, n);
		}
	}

	return 0;
}
