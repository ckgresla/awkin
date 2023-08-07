# Conditional Expressions, kinda like an if else variable assignment on a single line  


{ print ($1 != 0 ? 1/$1 : "$1 is zero, line ", NR) } 


	# awk -f SAMPLES/2-13.awk data/numbers
	 
