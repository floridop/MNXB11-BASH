#!/bin/bash
# forexamples.sh
# run with: ./forexamples.sh
#

# print three strings
for word in one two three; do
    echo "$word"
done

# countdown each second
for i in {10..1}; do
    echo "now counting $i"
    # wait 1 second
    sleep 1
done

# Created using figlet (google: figlet boom)
echo "| __ ) / _ \ / _ \|  \/  | |"
echo "|  _ \| | | | | | | |\/| | |"
echo "| |_) | |_| | |_| | |  | |_|"
echo "|____/ \___/ \___/|_|  |_(_)"
