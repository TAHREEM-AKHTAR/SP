#include <stdio.h>
#include <unistd.h>
int main()
{
//normal user is not allowed to set the real, effective,saved id's but when we run the program as root so this pragram executed syccessfully
	uid_t ruid, euid, suid;
	gid_t rgid, egid, sgid;
	getresuid(&ruid, &euid, &suid);
	printf("My Real user-ID is: %d\n", (long)ruid);
	printf("My Effective user-ID is: %d\n", (long)euid);
	printf("My Saved Set-user-ID is: %d\n\n\n", (long)suid);

	getresgid(&rgid, &egid, &sgid);
	printf("My Real user-ID is: %d\n", (long)rgid);
	printf("My Effective user-ID is: %d\n", (long)egid);
	printf("My Saved Set-user-ID is: %d\n\n\n", (long)sgid);
	int rv = setuid(501);
	if (rv != -1)
	{
		getresuid(&ruid, &euid, &suid);
		printf("\n\nAfter setuid(501) the IDs are:\n");
		printf("My Real user-ID is: %d\n", (long)ruid);
		printf("My Effective user-ID is: %d\n", (long)euid);
		printf("My Saved Set-user-ID is: %d\n", (long)suid);

		getresgid(&rgid, &egid, &sgid);
		printf("My Real user-ID is: %d\n", (long)rgid);
		printf("My Effective user-ID is: %d\n", (long)egid);
		printf("My Saved Set-user-ID is: %d\n\n\n", (long)sgid);
	}
	else
	printf ("Error in setting ID\n");
	return 0;

}
