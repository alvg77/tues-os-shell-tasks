#!/bin/bash

read -p "Enter the full name of a directory: " VAR

echo -e "Files: $(find $VAR -type f | wc -l)"
echo -e "Directories: $(find $VAR -type d | wc -l)"
