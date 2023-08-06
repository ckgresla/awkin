# Application of the Is Matched by "~" and Is Not Matched By "!~" operators

awk '$4 ~/Asia/'  DATA/countries 
	# Prints all the asian countries

awk '$4 !~/Asia/'  DATA/countries
	# Prints all non-asian countries

