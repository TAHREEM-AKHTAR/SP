//sysprogramming/filemgmt/systemcalls/file4.c
// $./prog6 srcfile destfile
#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
int main(int argc, char *argv[]){
 char buff[1024];
int fd=open("/etc/shadiw",O_RDONLY);
int fd2=open(argv[1],O_CREAT|O_RDWR);
prinf(arg[1]);
int n=0;
if(fd==-1|| fd2 ==-1)
{
	perror("error");
	exit(1);
}
for(;;)
{
	n = read (fd, buff, 1023);
	if (n <= 0)
	{
		close(fd);
		break;
	}
	write(fd2, buff, n);
}
close(fd2);
return 0;


}
