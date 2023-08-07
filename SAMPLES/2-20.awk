# a simple While loop example, print each field on a line 


{
	i = 1
	while (i <= NF) {
		print $i
		i++ 
	}
	print NF " fields on line " NR "\n"
}

	# awk -f samples/2-20.awk data/countries
