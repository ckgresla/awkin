# BEGIN and END --> an example of printing titles in awk


BEGIN { print "NAME	RATE	HOURS"; print "" }
{ print }

	#this one prints out each line in the file, but before iterating over lines prints the header we included above
	# run it w; awk -f SAMPLES/1-4-7.awk DATA/emp.data
