# An example of a "saved" awk program, invoke with the -f flag


$3 == 0
{print $1, $2, "Hello from inside the 1-1-5.awk file"}


	# Calling this file from the root dir can be done as follows:
	# `awk -f SAMPLES/1-1-5.awk DATA/emp.data`
