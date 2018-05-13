#include<stdio.h>
#include<unistd.h>
int main()
{
// real id-> store the id of program's owner
// effective id-> stores the id of user that is executing the program

// group real id-> store the id of member of group
// group effective id-> stores the id of group memeber that is executing the program
	printf("Real user-Id: %d\n",(long)getuid());
	printf("Effective user-Id: %d\n",(long)geteuid());
	printf("Real group-Id: %d\n",(long)getgid());
	printf("Effective group-Id: %d\n",(long)getegid());


}
