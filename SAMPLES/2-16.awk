# Creating a REGEX variable and referencing it in a program


BEGIN { digits = "^[0-9]+$"} #match strings that start with a number, are followed by numbers until they end
$2 ~ digits { print "found digit:", $2, "on line no.", NR}

	# awk -f SAMPLES/2-16.awk DATA/countries

