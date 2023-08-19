# helper script to create random ints

awk '
BEGIN {
	for (i = 1; i <= 200; i++)
		print(int(101 * rand()))
}
' | awk -f SAMPLES/HistogramMaker.awk

	# we can then pipe this into a diff program, say something like | SAMPLES/HistogramMaker.awk	

