#include <stdio.h>
#include <unistd.h>
int main()
{
// real id-> store the id of program's owner
// effective id-> stores the id of user that is executing the program
//save id: stores the id of user when suid and sgid is set "effectuve id is changed"

// group real id-> store the id of member of group
// group effective id-> stores the id of group memeber that is executing the program
//group save id: stores the id of group when suid and sgid is set "effective group is is cahnged"

//getresuid():
// this is used to set real , effective and save id of user by using passed variables

//getresgid():
// this is used to set real , effective and save id of group by using passed variables



	uid_t ruid, euid, suid;
	gid_t rgid, egid, sgid;
	getresuid(&ruid, &euid, &suid);
	printf("My Real user-ID is: %d\n", (long)ruid);
	printf("My Effective user-ID is: %d\n", (long)euid);
	printf("My Saved Set-user-ID is: %d\n\n\n", (long)suid);
	getresgid(&rgid, &egid, &sgid);
	printf("My Real group-ID is: %d\n", (long)rgid);
	printf("My Effective group-ID is: %d\n", (long)egid);
	printf("My Saved Set-group-ID is: %d\n", (long)sgid);
	return 0;
}
