n1=raw_input("Enter String:")
num=0
letter=0
for ch in n1:
	if ch>='a' and ch<='z':
		letter+=1
	elif ch>='0' and ch<='9':
		num+=1
print('number: {0} | letters: {1}'.format(num,letter))



