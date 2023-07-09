# Compute the Average Pay


awk '

{ pay = pay + $2 * $3 }
END {
	print NR, "employees"
	print "  total pay:", pay
	print "average pay:", pay/NR
}

' DATA/emp.data


# iterate over all employees, computing the total pay as you go 
# @ end of iteration over lines, print the final total & the average
