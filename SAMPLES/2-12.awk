# Creating new fields per line

BEGIN {
	FS = OFS = "\t"
}

{ $5 = 1000 * $3 / $2; print }


	# awk -f SAMPLES/2-12.awk DATA/countries
