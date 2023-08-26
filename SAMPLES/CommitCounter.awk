# Run this one from the root dir of a git repo with: 
# awk -f SAMPLES/CommitCounter.awk .git/logs/refs/heads/main


BEGIN {FS = "\t"}
match($1, "([^<]*)>")  { 
	email = substr($1, RSTART, RLENGTH-1)
	committers[email] += 1
}


END {
	print length(committers) " -- putting up commits in '" FILENAME  "'"
	for (person in committers) {
		print "  " person " made " committers[person] " commits."
	}
}
