# This one gets UNIX-y with the piping of awk output to sort to do stuff


awk ' { printf("%6.2f %s\n", $2 * $3, $0) } ' DATA/emp.data | sort

	# here we print out the calculated pay to each employee, then prepend the value to the line for each entry in the data file -- sort then SORTs the entries piped in in ascending order
	# UNIX
