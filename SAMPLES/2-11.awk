# Changing the built-in vars --> solves the issue of default awk inferring the space between values (in field 4) is a sep field

BEGIN {
	FS = OFS = "\t"
}

$4 == "North America" { $4 = "NA"} 
$4 == "South America" { $4 = "SA"} 
					  { print }

# Sample end statement to print out the contents of the ARGV vars				  
# END {
# 	for (i = 0; i <= length(ARGC); i = i + 1) {
# 		print ARGC[i], i, length(ARGC)
# 	}
# }

	# awk -f SAMPLES/2-11.awk DATA/countries
