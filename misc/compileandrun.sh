#!/bin/bash

WORKDIR=/home/pflorido/tests/Aliceprob/
BINARYNAME=runme.bin

cd $WORKDIR

echo "cleanup previous binary..."
rm -f $BINARYNAME

echo "compiling code..."
g++ -std=c++20 -Wall -o $BINARYNAME sizeoftypes.cxx

echo "running code..."
./$BINARYNAME

