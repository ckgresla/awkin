# Similar example to prev, but this time with fancy alignment of nums!


awk ' { printf("%-8s $%7.2f\n", $1, $2 * $3) } ' DATA/emp.data

	# This example prints the names and pays of employees, with string justification!
