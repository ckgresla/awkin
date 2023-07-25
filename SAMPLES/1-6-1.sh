# Control-flow statements in AWK -- all relegated to actions, cannot make use of in patterns!


awk '
  $2 > 6  { n = n + 1; pay = pay + $2 * $3 } 
  END     { if (n > 0)
                print n, "employees total pay is", pay, "average pay is", pay/n
  		     else 
  			    print "no employees are paid more than $6/hour"
  		  }
' DATA/emp.data

	# this file prints alt values depending on the contents of DATA/emp.data
