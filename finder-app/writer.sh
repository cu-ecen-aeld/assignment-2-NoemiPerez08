#!/bin/bash
# Finder script
# Author: Noemi Perez

writefile=$1
writestr=$2

# Check if there is an argument missing (args should be greater or equal than 0)
if [ $# -ge 2 ]; then
	echo "Given namefile: ${writefile}"
	echo "String to write in file: ${writestr}"
	# Create directory in case it doesn't exist
	if [ ! -d $writefile ]; then
		DIRNAME=$(dirname $writefile)
		mkdir -p $DIRNAME
	fi
	echo $writestr>$writefile
	exit 0
else
	echo "failed: Missing parameters"
	exit 1
fi


# Tutorials:
# https://linuxconfig.org/bash-scripting-tutorial-for-beginners
# https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/
