#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
int main()
{
	int status;
	if(fork()==0)
	{
		printf("Child Process Id's:\n");
		printf("Child PID:%d \n",(long)getpid());
		printf("Child PPID:%d\n",(long)getppid());
		exit(-1);
	}
	else
	{
		wait(&status);
		printf("status returned by child %d \n",WEXITSTATUS(&status));
		
		printf("Parent Process Id's:\n");
		printf("Parent PID:%d \n",(long)getpid());
		printf("Parent PPID:%d\n",(long)getppid());

	}
}
