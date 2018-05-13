#include<stdio.h>
#include <fcntl.h> // if you are using constant O_RDONLY
int main()
{
	dup2(1,2);
	close(1);
	int fd1 = open ("f1", O_WRONLY);
	
	
	
	if(fd1 == -1 )
	{
		
		perror("Error in file opening");
		exit(-1);
	}
	close(0);
	char buff[256];
	int fd = open ("f2",O_RDONLY);
	if(fd == -1 )
	{
		
		perror("Error in file opening");
		exit(-1);
	}
	else
	{
		int n;
		for(;;)
		{
			n = read (fd, buff, 255);
			if (n <= 0){
				close(fd);
				return 0;
			}
			write(1, buff, n);
		}

	}
	


	return 0;
}
