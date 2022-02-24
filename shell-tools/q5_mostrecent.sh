#!/bin/bash

max=0
maxfile=0

# Function to walk directory recursively.
# $1 : starting dir
function walk_dir() 
{
    for file in "$1"/*; do
        # If $file is directory, call walk_dir recursively.
        if [[ -d $file ]]; then
            walk_dir $file

        # Else, compare modified time in second
        # and update $max, $maxfile if needed
        elif [[ -f $file ]]; then
            d=$(date -r $file +%s)
            if [[ $d -gt $max ]]; then
                max=$d
                maxfile=$file
            fi
        fi
    done
}

walk_dir $1
echo "Most recently modified file is $maxfile"
