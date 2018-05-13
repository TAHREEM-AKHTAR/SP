#include<stdio.h>
#include <fcntl.h> // if you are using constant O_RDONLY
int main()
{
	char buff[1024];
	int fd1 = open ("f1", O_RDONLY|O_CREAT|O_WRONLY);
	int fd2 = open ("f2", O_RDONLY|O_CREAT|O_WRONLY);
	int fd3 = open ("f3", O_RDONLY|O_CREAT|O_WRONLY);
	
	int n;
	if(fd1 != -1 && fd2 != -1)
	{
		close(1);
		dup2(fd1);
		close(2);
		dup2(1,2);
		close(0);
		dup(fd1);

	
		for(;;)
		{
			n = read (fd1, buff, 1023);
			if (n <= 0){
				close(fd1);
				return 0;
			}
			write(fd1, buff, n);
		}

		
		
	

		
	}
	else
	{
		perror("Error");
		close(fd2);
		close(fd3);
	}

	return 0;
}
