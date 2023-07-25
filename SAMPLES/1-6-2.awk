# The WHILE Statement -- an example with compounding interest 


# Compound Interest Formula
#  input: amount  rate  years
# output: compounded investment (amount as it changes over time) @ end of each year (within while loop)

{
	printf("let us see how your intelligent investment of %.2f grows, over %.0f yrs\n", $1, $3)
	i = 1
	while (i<=$3) {
		printf("\t%.2f\n", $1 * (1 + $2) ^ i)
		i = i + 1
	}
}

	# awk -f SAMPLES/1-6-2.awk DATA/interests
	# dont forget to invest kids!

