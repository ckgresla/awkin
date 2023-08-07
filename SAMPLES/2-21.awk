# Print all lines that have an empty field


BEGIN {
	FS = "\t"
}

{
	for (i = 1; i <= NF && $i == ""; i++)
		;
	if (i <= NF)
		print	
}

	# awk samples/2-21.awk -f data/odd-data.tsv
