''' task3: program to find a 2x2 matrix in an 8x8 matrix'''
a=[[100,3,4,6,30,2,6,1],
   [50,67,70,34,45,23,0,3],
   [1,5,8,43,90,8,9,20],
   [1,2,45,78,43,42,5,4],
   [8,99,9,0,98,0,1,56],
   [0,0,3,4,5,6,7,8],
   [10,56,78,34,1000,7,1,6],
   [2,89,4,7,56,2,90,1]]
print 'enter a 2x2 matrix:'
a11=input('Enter avlue of a[1][1]: ')
a12=input('Enter avlue of a[1][2]: ')
a21=input('Enter avlue of a[2][1]: ')
a22=input('Enter avlue of a[2][2]: ')
val=[0,1,2,3,4,5,6,7]
count=0
for row in val:
	for col in val:
		if a11==a[row][col]:
			if a[row].index(a11)<7 and row<7:
				if a12==a[row][col+1] and a21==a[row+1][col] and a22==a[row+1][col+1]:
					count=count+1
					print 'matrix found'
					print 'staring point of matrix is ({0},{1})'.format(row+1,a[row].index(a11)+1)
if count==0:
	print 'No such matrix found in 8x8 matrix'
		
	 	
			
		
		

