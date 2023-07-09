# Handling Text -- string vars apparently did not come for free back in the day, big innovation from AWK


$2 > maxrate { maxrate = $2; maxemp = $1 }
END { print "highest hrly rate -->", maxrate, "goes to:", maxemp }


	# run w; awk -f SAMPLES/1-5-4.awk DATA/emp.data
