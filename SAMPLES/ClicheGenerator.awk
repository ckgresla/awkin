# taken from Section 5's examples of random number generating --> create random combinations of cliches
#     input: lines formatted as subject:predicate
#    output: lines with a random subject and random predicate


BEGIN {
	FS = ":"
}
# load in all of the input lines for accessing later
{
	x[NR] = $1
	y[NR] = $2
}

END {
	for (i = 1; i < 10; i++) print x[randint(NR)], y[randint(NR)] 
}


function randint(n) {
	return int(n * rand()) + 1
}


	# awk -f SAMPLES/ClicheGenerator.awk DATA/cliches
