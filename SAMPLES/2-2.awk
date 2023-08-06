# Doing a print statement across newlines -- for the readability, we need to BREAK

{ print \
	$1,   # the country's name
	$2,   # area in thousands of square miles
	$3   # population in millions
} 
	# try calling it with
	# awk -f SAMPLES/2-2.awk DATA/countries

