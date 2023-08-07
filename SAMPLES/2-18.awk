# Truncating country names with a built-in string function  


{ $1 = substr($1, 1, 3); print $0 } 

	# awk -f samples/2-18.awk data.countries
