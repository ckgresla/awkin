# Compute total population and number of listed asian countries, leveraging the "assignment operator"


$4 == "Asia" { pop = pop + $3; n = n + 1 }
END {
	print "Total population of the", n, "Asian countries is", pop, "million"
}


	 #awk -f SAMPLES/2-14.awk data/countries
