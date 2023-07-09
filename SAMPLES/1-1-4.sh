# We can also just specify an action in an awk program, this will execute on all lines since we do not filter down the input with some sort of pattern that must be matched


awk ' {print $1} ' DATA/emp.data
	# this program prints out all of the 1st fields in the file, for this case the names of employees
