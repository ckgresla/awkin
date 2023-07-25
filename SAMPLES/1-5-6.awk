# Counting Lines, Words & Characters in a file --> built-in function example!


	{ nc = nc + length($0) + 1
	  nw = nw + NF 
	}
END { print NR, "lines,", nw, "words,", nc, "characters," }


	# prints summary info for the input file, looks pretty cool
	# awk -f SAMPLES/1-5-6.awk DATA/emp.data
