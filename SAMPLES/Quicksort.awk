# an example implementation of "Quick Sort" --> sort an array quickly with recursion 


# load in data from input to array 
BEGIN {
	RS = " " #assume data is a single line of nums we want to sort
	print "Sorting Numbers with the Quicksort algorithm"
}
{ A[NR] = $0 } 

END {
	print "original array: "
	for (i in A) print i

	print "sorted version: "
	qsort(A, 1, NR)
	for (i = 1; i <= NR; i++)
		print A[i] 
}

# qsort - sort A[left..right] by through quicksorting
function qsort(A, left, right,    i, last) {
	if (left >= right) #no partitioning if array contains less than two elements, edge case
		return
	swap(A, left, left + int((right - left+1) * rand()))
	last = left #A[left] is now partition element
	for (i = left + 1; i <= right; i++)
		if (A[i] < A[left])
			swap(A, ++last, i)
	swap(A, left, last)
	qsort(A, left, last-1)
	qsort(A, last+1, right)
}

function swap(A, i, j,    t) {
	t = A[i]; A[i] = A[j]; A[j] = t
}



	# awk -f SAMPLES/Quicksort.awk DATA/sortables
