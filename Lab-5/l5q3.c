#include<stdio.h>
int main()
{
	
	if(fork()==0)
	{
		printf("Child Process Id's:\n");
		printf("Child PID:%d \n",(long)getpid());
		printf("Child PPID:%d\n",(long)getppid());
	}
	else
	{
		wait(NULL);
		printf("Parent Process Id's:\n");
		printf("Parent PID:%d \n",(long)getpid());
		printf("Parent PPID:%d\n",(long)getppid());

	}
}
