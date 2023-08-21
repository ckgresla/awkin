# an example implementation of "Insertion Sort" --> quick and effective sorting algorithm for smaller problems


# load in data from input to array 
BEGIN {
	RS = " " #assume data is a single line of nums we want to sort
	print "Sorting Numbers with the Insertion Sort algorithm"
}
{ A[NR] = $0 } 

END {
	print "original array: "
	for (i in A) print i

	print "sorted version: "
	isort(A, NR)
	for (i = 1; i <= NR; i++)
		print A[i] 
}

# isort - sort A[1..n] by insertion 
function isort(A, n,    i, j, t) {
	for (i = 2; i <= n; i++)
		for (j = i; j > 1 && A[j-1] > A[j]; j--) {
			# swap positions of A[j-1] and A[j]
			t  = A[j-1]; A[j-1] = A[j]; A[j] = t
		}
}

	 # awk -f SAMPLES/InsertionSort.awk DATA/sortables
	  
