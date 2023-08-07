# Example of using a OR Operator in a compound pattern


$4 == "North" || $4 == "South" { print $1, "is in", $4 }

	# need go off north or south, since the space is somehow recongized as a field, could avoid by specifying a specific field sep in BEGIN
	# awk -f SAMPLES/2-7.awk DATA/countries

