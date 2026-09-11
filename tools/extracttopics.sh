#!/bin/bash

# This tool extracts the titles from exercises to create a TOC to be written
# in the exercises README.md file

EXERCISEPATH=${1:-.}

for exercise in `ls $EXERCISEPATH`; do 
    if [ -d "$EXERCISEPATH/$exercise" ]; then
       TOPIC=$(head -1 $EXERCISEPATH/$exercise/README.md)
       echo "  - $exercise : $TOPIC"
    fi
done


