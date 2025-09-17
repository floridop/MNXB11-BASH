Learn how to use single quote `'` , double quote `"` and the backslash `\` _escape_ symbol

Single quotes force BASH to parse the string verbatim.
Double quotes are a way to group input.
The backslash symbol prevents BASH from interpreting certain characters as special.

Modify the `answers.sh` script to be more explicit about what it
is printing on screen. Use the escape character \ to write the
symbol $ without it being parsed by BASH.

1) Define the value of the ANSWERS variable to be "FortyTwo" instead of 42

2) Add the following code: 

```shell

# Double quotes tell bash to substitute a variable value
echo "The value of the variable ANSWERS is: $ANSWERS"

# Single quotes tell bash to print the string verbatim (as it is)
echo 'The value of the variable ANSWERS is NOT: $ANSWERS'

# Using the backslash \ symbol to escape special symbols in a double
# quoted string:
echo "The syntax \$ANSWERS returns the value of ANSWERS: $ANSWERS"

```
