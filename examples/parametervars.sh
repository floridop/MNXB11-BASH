#!/bin/bash
# parametervars.sh
# call with: ./parametervars.sh arg1 arg2 arg3
#

# print out info about arguments to this script
echo "Number of arguments: $#"
echo "Name of this script: $0"
echo "First 4 arguments: $1 $2 $3 $4"
echo "Arguments as a single string: $@"

