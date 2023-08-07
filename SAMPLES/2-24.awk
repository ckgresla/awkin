# Pseudo-multidimensional arrays --> the creators hacked these in?


{
for (i = 1; i <= 10; i++)
	for (j = 1; j <= 10; j++)
		arr[i, j] = 0
}
END {
	for (i in arr)
		print i
}

	# awk -f SAMPLES/2-24.awk DATA/countries

