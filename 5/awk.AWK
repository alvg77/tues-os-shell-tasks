BEGIN { print "START" }
{ print $2, "\t", $3}
END { print "FINISH" }