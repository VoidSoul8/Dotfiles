#!/bin/sh

acpiconf -i 0 | awk -F: '
/Remaining capacity/ {
	  gsub(/^[ \t]+/, "", $2)
	    perc=$2
    }
/Remaining time/ {
	  gsub(/^[ \t]+/, "", $2)
	    time=$2
    }
END {
	  if (time && time != "unknown")
		      print perc " (" time ")"
		        else
				    print perc
			    }'
