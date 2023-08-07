# getting interactive with awk-style regular expressions 

awk '$1 ~ $2' <&p print "stringtoSEARCH /SEARCH$/"

	# this one basically demonstrates a simple way to run regexes, basically we check if field 1 matches field 2;
	# where field 1 is a sample string to search inside of and;
	# field 2 is the REGEX to apply for searching
	
	# this is intended to be retyped in the CLI, since here i
