# Using an array to load a full file and print lines iteratively


awk '

{ names[NR] = $1 }

END {
	for ( i = 1; i <= NR; i = i+1 )
		printf("Index-%s has Name-%s\n", i, names[i])
}

' DATA/emp.data

	#array to hold specific fields from lines in a file then print out w index, in this case names
