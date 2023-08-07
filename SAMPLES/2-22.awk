# Leverage the Array to create a mapping of Continent name to population counts (for all countries in continent)


/Asia/ { pop["Asia"] += $3 }
/Europe/ { pop["Europe"] += $3 }

END {
	print "Population of Asia:", pop["Asia"], "million"
	print "Population of Europe:", pop["Europe"], "million"
}


	# awk -f samples/2-22.awk data/countries
	# this sort of programming style feels rather pythonic
