#!/bin/bash

CODEPARAM=${1:-6}
SCRIPTPATH=$(realpath $0)
echo $SCRIPTPATH
SCRIPTDIR=$(dirname $SCRIPTPATH)
cd $SCRIPTDIR/..
BASEDIR=$(pwd)
echo "BASEDIR is $BASEDIR"

echo "Modifying source code with parameter: $CODEPARAM"
sed -ibkp 's/N = 1e.*;/N = 1e'"$CODEPARAM"';/' $BASEDIR/src/main.cxx


BUILDPATH=$BASEDIR/build
EXECPATH=$BUILDPATH/src/main
echo "BUILD path is $BUILDPATH"

echo "Creating directories and compiling"
if [[ ! -d $BUILDPATH ]]; then 
   echo "Creating build path"
   mkdir $BUILDPATH
else
   echo "Build path already existing"
fi

cd $BUILDPATH

echo "Building code..."
make clean
cmake $BUILDPATH/..
make

echo "Built executable $EXECPATH"
echo "Starting computation..."
$EXECPATH

echo "Result can be found in $BUILDPATH"

