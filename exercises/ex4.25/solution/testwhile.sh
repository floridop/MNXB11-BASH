#!/bin/bash
# testwhile.sh
# run with: ./testwhile.sh
#
# Continue asking to type until the user writes "STOP!"

# Source libraries or exit with error

if [[ ! -r testwhile_libs.sh ]]; then
   echo "Library file testwhile_libs.sh not found or not readable in $PWD"
   echo "Library must be in the same path where $0 is executed."
   echo "Cannot continue. Exiting..."
   exit 1
fi

# Load library
source testwhile_libs.sh

# Set the stop word TESTWHILE_STOPWORD
setstopword 'STOP!'

# Ask for input for the first time
askinput

# Loop until word is *not* $TESTWHILE_STOPWORD
while [ "$var1" != "$TESTWHILE_STOPWORD" ]; do
  reverseword $var1
  echo
  askinput
done

echo
echo "$TESTWHILE_STOPWORD detected, exiting!"
