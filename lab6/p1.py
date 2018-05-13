n1=[]
for x in range(2000-1, 3200+1):
	if (x%7==0) and not(x%5==0):
		n1.append(str(x))
print(','.join(n1))

