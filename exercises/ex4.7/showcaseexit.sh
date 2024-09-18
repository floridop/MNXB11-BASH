#!/bin/bash

echo

echo "list root folder, this should have exit code 0"
echo "Command: ls /"
ls /
echo "Exit code: $?"
echo

echo "list a non existing folder, this should generate an error and therefore have exit code not 0"
echo "Command: ls thisfolderdoesnotexist"
ls thisfolderdoesnotexist
echo "Exit code: $?"
echo

echo "Test the exit code on a list of commands separated by semicolon ;"
echo "Only the test for the last command in the list will generate an error or not"
echo

echo "Trying the list:"
echo "Commands: ls / ; ls thisfolderdoesnotexis"
ls /; ls thisfolderdoesnotexist
echo "Exit code: $? (only exit code of 'ls thisfolderdoesnotexist', the one for 'ls /' is lost.)"
echo

echo "Trying the list:"
echo "Commands: ls thisfolderdoesnotexist; 'ls /'"
ls thisfolderdoesnotexist; ls /
echo "Exit code: $? (only exit code for 'ls /', the exit code for 'ls thisfolderdoesnotexist' is lost.)"
echo

echo "Storing the exit value in a variable to use later"
echo "Command: ls /"
ls /
LSEXITVALUE=$?
echo "The exit value stored in LSEXITVALUE is $LSEXITVALUE"
echo
