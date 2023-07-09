# REGEX is supported, and with the ability to take mulitple files as input....
# recreate GREP in awk

awk '/Susie/' DATA/*

	# prints all lines in any file inside the 'DATA' dir that contain the literal string 'Susie'
