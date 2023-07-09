# NF is a built-in variable that stores the number of fields per line

awk '{ print "num fields: ", NF, "for line", $0}' DATA/odd-data.tsv

