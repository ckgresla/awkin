# Use an assoicative array to compute the population counts for each continent (no-hardcoding of values)


BEGIN { FS = "\t" }

      { pop[$4] += $3 }

END {
	for (name in pop)
		print name, pop[name] "M"
}

	# quick note: the M @ the end of the print statement gets concatenated with the rest of the args into a str which we print
	# awk -f samples/2-23.awk data/countries
