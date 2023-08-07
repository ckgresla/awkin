# Defining FUNCTIONS


function max(m, n) {
	return m > n ? m : n
}

# could use a shorter defining word
func min(m, n) {
	return m < n ? m : n 
}


END {
	v1 = 10
	v2 = 3
	print "max: " max(v1, v2)
	print "min: " min(v1, v2)
}


	# awk -f Samples/2-25.awk  data/numbers 
	# this program doesn't really refernce the numbers datafile, it could though! 
