# String Concats


	{ names = names $1 " " }
END { print names }

	# this shows how to concatenate strings together, in this case adding all of the field 1 entries together in a space separated list
	# awk -f SAMPLES/1-5-5.awk DATA/emp.data
