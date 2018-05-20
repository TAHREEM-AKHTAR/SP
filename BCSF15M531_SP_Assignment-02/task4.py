'''task3: script that displays detailed info of a given process'''
import psutil
import datetime
import sys
import os
for x in sys.argv:
	try:
		n=int(x)
		pro=psutil.Process(n)
		pp=psutil.Process(pro.ppid())
		print "Process ID : {0} ".format(pro.pid)
		print "Process name: {0} ".format(pro.name())
		print "Process Status : {0} ".format(pro.status())
		print "Process Parent id : {0} ".format(pro.ppid())
		print "Process Parent name : {0} ".format(pp.name())
		d=pro.create_time()
		print "Process Creation Time :{0} ".format(datetime.datetime.fromtimestamp(pro.create_time()).strftime("%Y-%m-%d %H:%M:%S"))
		print "Files opened by the process : {0}".format(pro.open_files())
		print "Memory info : {0} ".format(pro.memory_info().rss)
		print "-------------------------------------------"	
	except Exception as ex:
		print ex
	
