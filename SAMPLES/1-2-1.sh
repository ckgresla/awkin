# Not all awk programs need operate w the same number of fields per line!


echo "RUNNING AWK PROGRAM TO PRINT ALL LINES w 4 FIELDS"
awk 'NF==4 {print $0}' DATA/odd-data.tsv
	#this one prints the whole line of lines in odd-data which have a 4th field
	# the 'NF' corresponds to the number of fields on line, some have 3 in this file

# now we will do the same but w 3 fields
echo "\nNOW PRINTING SAME DATA, BUT LINES w 3 FIELDS"
awk 'NF==3 {print $0}' DATA/odd-data.tsv
