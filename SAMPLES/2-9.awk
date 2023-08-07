# Using the FNR and FILENAME built in vars + an example of a range pattern (applies actions to all lines in between the two REGEX matches, here where FNR is 1 or 5, basically applies the action to lines 1 through 5)

FNR == 1, FNR == 5 { print FILENAME " @ " FNR ": " $0 }

# An equivalent pattern to the one above might be
# FNR <= 5 
# Which would match the same line numbers as the above range query does
	# awk -f SAMPLES/2-9.awk DATA/countries

