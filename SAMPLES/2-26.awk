# Calling unix commands from within awk --> good god that is so freaking cool

BEGIN {
	dircontent = system("ls -l")
	print dircontent
}

	# awk -f samples/2-26.awk 
	# because body of program is in the BEGIN statement, we do not need to pass in an input file! 
