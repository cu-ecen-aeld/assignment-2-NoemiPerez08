#!/bin/bash
# Finder script
# Author: Noemi Perez

filesdir=$1
searchstr=$2

# Check if there is an argument missing (args should be greater or equal than 0)
if [ $# -ge 2 ]; then
	# Check if args are valid
	echo "Given directory: ${filesdir}"
	echo "String to search: ${searchstr}"
	if [ -d $filesdir ]; then
		# find number of files
		NUMFILES=$(find $filesdir -type f | wc -l) 
		# search for number of matching lines in the directory files
		MATCHINGLINES=$(grep -r $searchstr $filesdir | wc -l)
		echo "The number of files are ${NUMFILES} and the number of matching lines are ${MATCHINGLINES}"
		exit 0
	else
		echo "failed: ${filesdir} is not a valid directory"
		exit 1
	fi

else
	echo "failed: Missing parameters"
	exit 1
fi


# Tutorials:
# https://linuxconfig.org/bash-scripting-tutorial-for-beginners
# https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/
