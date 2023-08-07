# Leverage the PIPE Operator inside of an awk script, god good this is amazing

BEGIN {
	FS = "\t"
}

{ pop[$4] += $3 }

END {
	for (c in pop) {
		printf("%15s\t%6d\n", c, pop[c]) | "sort -t '\t' +1rn"
	}
}


	# awk -f samples/2-27.awk data/countries
	# SO FREAKING COOL
