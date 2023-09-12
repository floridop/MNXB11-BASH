#!/bin/bash
# testwhile.sh
# run with: ./testwhile.sh
#
# Continue asking to type until the user writes "STOP!"

STOPWORD='STOP!'

# Function to ask for input
askinput(){
  echo "Input variable value ($STOPWORD to exit) "
  read var1
}

# Function to reverse words
reverseword(){
  WORD=$1
  echo $WORD | rev
}

askinput

# Loop until word is *not* $STOPWORD
while [ "$var1" != "$STOPWORD" ]; do
  reverseword $var1
  echo
  askinput
done

echo
echo "$STOPWORD detected, exiting!"
