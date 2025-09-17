#!/bin/bash
# testif.sh
# run with: ./testif.sh arg1 arg2 arg3
#
# test that at least three arguments are passed to the script
if  [[ $# -le 2 ]];  then
    echo "Not enough arguments. Must be at least 3! Exiting..."
    # exit and close the program with error (not 0)
    exit 1
else
    echo "More than 2 arguments. Continuing execution"
fi

# exit with error if the first two parameters are the same string
if [[ $1 == $2 ]]; then
    echo "Error: The first two parameters are the same string. Exiting..."
    exit 1
fi

echo
echo "This part of the code is executed only if the arguments are more than 2."
echo "Inverting arguments order."
# inverting arguments order and arguments characters using the rev command
echo $@ | rev
exit 0
