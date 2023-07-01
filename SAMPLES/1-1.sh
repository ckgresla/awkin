# program to print out all employess who worked more than a single hour
awk '$3 > 0 { print $1, $2 * $3 }' DATA/emp.data

	# do a filter where field 3's values are greater than zero (more than 1 hr worked)
	# print the name and pay (multiply hour by rate to get their pay) for that employee

# This is a simple example of a pattern-action statement, where PATTERN is true do ACTION
	# PATTERN = $3 > 0
	#  ACTION = { print $1, $2 * $3 } 

