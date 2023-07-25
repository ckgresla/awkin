# Reverse Print a File with the awk Array


awk '
  { line[NR] = $0 }

  END { i = NR
        while (i > 0) {
			print line[i]
			i = i - 1
		}
      }
' DATA/emp.data

# This loads the file, line by line, then prints each line starting from the end of the array
