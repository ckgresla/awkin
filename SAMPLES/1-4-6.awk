# Data Validation --> essentially use awk to confirm that input data follows a schema!


NF != 3 { print $0, "number of fields is not equal to 3" }
$2 < 3.35 { print $0, "rate is below the minimum wage" }
$2 > 10 { print $0, "rate exceeds $10 per hour" }
$3 < 0 { printf("%s -- negative hours worked!", $0) }
$3 > 60 { print $0, "-- too many hours worked!" }


	# example usage to run these "validations" might look like:
	# awk -f SAMPLES/1-4-6.awk DATA/emp.data

