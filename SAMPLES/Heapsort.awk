# an example implementation of "Heap Sort" --> use a priority queue where we pop off the largest element @ each timestep to sort in desc order
# makes use of the heap property of arrays in order to implement the queue as an array, really cool property (see pg. 163 of book)


# load in data from input to array 
BEGIN {
	RS = " " #assume data is a single line of nums we want to sort
	print "Sorting Numbers with the Heap Sort algorithm"
}
{ A[NR] = $0 } 

END {
	print "original array: "
	for (i in A) print i

	print "sorted version: "
	hsort(A, NR)
	for (i = 1; i <= NR; i++)
		print A[i] 
}


function hsort(A, n,    i) {
	for (i=int(n/2); i >= 1; i--)
		{ heapify(A, i, n) }
	for (i = n; i > 1; i--) {
		{ swap(A, 1, i) }
		{ heapify(A, 1, i-1) }
	}
}

function heapify(A, left, right,    p, c) {
	for (p = left; (c = 2*p) <= right; p = c){
		if (c < right && A[c+1] > A[c])
			{ c ++ }
		if (A[p] < A[c])
			{ swap(A, c, p) }

	}
}

function swap(A, i, j,   t) {
	t = A[i]; A[i] = A[j]; A[j] = t 
}


	 # awk -f SAMPLES/HeapSort.awk DATA/sortables
	  
