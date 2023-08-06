# Print out the Countries Data, nicely 


BEGIN {
	FS = "\t"    # tab as the field separator
	printf("%10s %6s %5s    %s\n\n", 
		"COUNTRY", "AREA", "POP", "CONTINENT" )
		# it is rather ugly, but you need to include the paranthesis at the end of the print line, or a \ to escape the newline
}

# iterate over the countries, print each line's info and track data for TOTALs
{
	printf("%10s %6d %5s    %s\n", $1, $2, $3, $4)
	area = area + $2 
	pop = pop + $3
}

END {
	printf("\n%10s %6d %5d\n", "TOTAL", area, pop)
}



	# run it w
	# awk -f SAMPLES/2-3.awk DATA/countries
