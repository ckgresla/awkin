# This lil script showcases how we can split up Fields and Records to start messing with JSONL Files

awk ' BEGIN {FS="\":"; RS="}\n"} {print  $1 "\n", $2 }' DATA/sample.jsonl


