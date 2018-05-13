#include<stdio.h>
#include <fcntl.h> // if you are using constant O_RDONLY
int main()
{
	char buff[256];
	close(0);
	int fd1 = open ("f1", O_RDONLY);
	if(fd1 == -1 )
	{
		
		perror("Error in file opening");
		exit(-1);
	}
	dup(1,2);
	close(1);
	int fd2= open ("f2", O_WRONLY);

	if(fd2 == -1 )
	{
		
		perror("Error in file opening");
		exit(-1);
	}
	else
	{
		int n;
		for(;;)
		{
			n = read (fd1, buff, 255);
			if (n <= 0){
				close(fd1);
				return 0;
			}
			write(fd2, buff, n);
		}
		close(fd1);
		close(fd2);
		

	}
	
}
