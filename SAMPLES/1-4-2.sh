# Selection by COMPUTATION


awk '$2 * $3 > 50 { printf("$%.2f total pay for %s\n", $2 * $3, $1) } ' DATA/emp.data

	#this one prints all of the lines where employees make more than $50 for the period
