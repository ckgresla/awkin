# printf is apparently very powerful, here we get introduced to it


awk '{ printf("The Pay for %s is $%.2f\n", $1, $2 * $3) }' DATA/emp.data
	#now we get into classic print formatting, here the '%' is used to specify how to format a supplied field, we can include stuff to print as comma sep'd values in the 'printf' call

