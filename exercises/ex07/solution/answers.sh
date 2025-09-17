#!/bin/bash

# Define and initialize a variable called ANSWERS with the number 42
ANSWERS="FortyTwo"

# Print to screen the content of the variable and a description of what
# is going on, using single and double quotes and the escape character

# Double quotes tell bash to substitute a variable value
echo "The value of the variable ANSWERS is: $ANSWERS"

# Single quotes tell bash to print the string verbatim (as it is)
echo 'The value of the variable ANSWERS is NOT: $ANSWERS'

# Using the backslash \ symbol to escape special symbols in a double
# quoted string:
echo "The syntax \$ANSWERS returns the value of ANSWERS: $ANSWERS"

