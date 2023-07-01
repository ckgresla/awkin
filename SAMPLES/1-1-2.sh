# Print the names of employees that have no work hours logged
awk '$3 == 0 {print $1 }' DATA/emp.data
