# For Loopin -- same compound interest calculation in prev example but with a finite for loop!


{
	for (i = 1; i <= $3; i = i + 1)
		printf("\t%.2f\n", $1 + (1 + $2) ^ i)

}

	# awk -f SAMPLES/1-6-3.awk DATA/interests
	# similar behavior as while loop, but a bit more terse

