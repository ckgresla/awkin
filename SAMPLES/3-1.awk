# program to compute the percentages for a column of numbers in a file 


{ x[NR] = $2; sum += $2 } 

END {

	if (sum != 0)
		for (i = 1; i <= NR; i++)
		    # printf("%10.2f %5.1f%s \n", x[i], 100*x[i]/sum, "%")
		    printf("%10.2f %5.1f%% \n", x[i], 100*x[i]/sum)
			# the double ampersand (%%) escapes the format pointer, printing the literal "%"
}


	#  awk -f SAMPLES/3-1.awk DATA/countries
