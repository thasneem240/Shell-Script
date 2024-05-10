#!/bin/bash

if [ $# -eq 0 ]; then
	echo No Arguments Provided.

else
	if [ -e output.txt ]; then
		rm output.txt
	fi
	
	for file in $(find -type f); do
		grep -Ew "$1" $file >> output.txt
	done	
fi
