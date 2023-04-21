#!/usr/bin/bash

# $# -> number of arguments passed; does not count itself as one
if [[ "$#" -ne 1 ]]; then
    echo "$0 accepts one argument"
    exit -1
fi

if [[ ! -r "$1" ]]; then
    echo "$1 lacks read permission"
    exit -1
fi

COUNT=0
MAXC=$COUNT

while read -r line; do
    
    
    OCNT=$( grep -E '{' <<< "$line" | wc -l )
    CCNT=$( grep -E '}' <<< "$line" | wc -l )
    if [[ CCNT -ge 1 ]]; then
        COUNT=$(( $COUNT - 1 ))
    elif [[ OCNT -ge 1 ]]; then
        COUNT=$(( $COUNT + 1 ))
        if [[ "$COUNT" -gt "$MAXC" ]]; then
            MAXC=$COUNT
        fi
    fi

done < "$1"

echo "Max level of nesting is $MAXC"