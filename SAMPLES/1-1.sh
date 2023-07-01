# program to print out all employess who worked more than a single hour
awk '$3 > 0 { print $1, $2 * $3 }' DATA/emp.data
