#!/usr/bin/bash

read -p "Enter name of file" filename
read -p "Enter pattern" pattern

count=$( grep -E "$pattern" "$filename" | wc -l )
exit=$?

if [[ count -gt 0 ]]; then
	echo "Sequence is present in file"
else 
	echo "Sequence is not present in file"
fi

echo "Exit code is $exit"
