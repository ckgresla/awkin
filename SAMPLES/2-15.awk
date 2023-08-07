# Find max population country


$3 > maxpop { maxpop = $3; country = $1 }
END { print "country with the largest population:", country, "@", maxpop, "million" }


	# awk -f samples/2-15.awk data/countries
