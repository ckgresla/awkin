# An Example leveraging the 'countries' datafile

awk ' {print NR, $1, " in ", $4}' DATA/countries

	# print the index, country name and its continent for all lines in file
