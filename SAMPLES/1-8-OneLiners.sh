# The Collection of Nice Lil One-Liner Awk Programs + Breakdowns
# a ton of these involve just printing out information, but one of the main 'points' of awk is wrangling data for some other task - which in the context of a unix system means you might pipe the stdout from the awk program into something else (as a filter step say)

datafile="DATA/emp.data"




# Print out the number of lines in a file (a bit cleaner than "cat {filename} | wc -l")
awk 'END { print NR }' $datafile


# Print out a Specific Line NO. from a File  
awk 'NR == 3' $datafile
	# useful tidbit--> default behavior for a pattern match program w no action is to print the line @ the match


# Print the Last "Field" from each input line 
awk '{ print $NF }' $datafile


# Print Each Line w More than N Fields (check if lines in a file adhere to some schema perhaps?)
awk 'NF > 3' $datafile


# Print out All Input Lines where the last field is more than some value
awk '$NF > 10' $datafile
	# this applies the logic to each line in file, and finds the last field's value per line it checks (in this case the num hours)


# Print out the total number of fields, across all of the input lines (total num fields in a whole file)
awk '
	{ nf = nf + NF }
END { print nf }
' $datafile


# Print the number of lines in file where we find a Regex Match
awk '
	/Beth/ { nlines = nlines + 1 }
	END    { print nlines " have the name 'Beth' on them" } 

' $datafile
	# now this is something that starts to look REALLY useful, awk can let you manipulate files & get info via regex matches


# Find the line which has the "max" value for some specified field, after checking all lines print out the best/maximium found
awk '
	$2 > max { max = $2; maxline = $0 }
	END      { print max, maxline }
' $datafile


# Print Lines w At Least One Field
awk '$NF > 0' $datafile


# Filter down lines in a file based on their lengths in characters, neat!
awk 'length($0) > 120' $datafile


# Print N Fields and Entire Line, per line in datafile
awk '{ print NF, $0 }' $datafile


# Swap the order of Fields on line & Print 
awk  ' { print $2, $1 } ' $datafile 


# Exchange the positions of fields on a line, then print the whole line
awk ' { temp = $1; $1 = $2; $2 = temp; print }' $datafile 


# Print Lines with index instead of 1st field on line 
awk ' {$1 = NR; print } ' $datafile


# Print out the line after 'erasing' a field, handy if some fields are rather verbose or nonsensical
awk ' { $2 = ""; print } ' $datafile


# Print Fields of a line in reverse order -- feels like a list comprehension in python?
awk '
	{ for (i = NF; i > 0; i = i - 1) printf("%s ", $i)
	  printf("\n")
	}
' $datafile


# Get a Total Sum of fields per line, print that and the line index
awk '
{
	sum = 0
	for (i = 1; i < NF; i = i + 1) sum = sum + $i
		print NR, "-->", sum
	}
' $datafile


# Get a Total Sum for all values on lines in a program
awk '
	{ for (i=1; i<=NF; i = i + 1) sum = sum + $i }
END { print sum }
' $datafile


# Convert fields to positives, taking the absolute values of them in iteration
awk '
{
	for (i = 1; i <= NF; i = i + 1) if ($i < 0) $i = -$i
	print 
}
' $datafile


