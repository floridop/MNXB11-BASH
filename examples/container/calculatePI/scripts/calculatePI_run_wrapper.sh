#!/bin/bash

# Extracts the full path of this script
SCRIPTPATH=$(realpath $0)
echo $SCRIPTPATH
# extracts just the directory where this script is
SCRIPTDIR=$(dirname $SCRIPTPATH)
# changes to one level up
cd $SCRIPTDIR/..
# saves the base directory for the code
BASEDIR=$(pwd)
echo "BASEDIR is $BASEDIR"

# Path to Cmake build directory
BUILDPATH=$BASEDIR/build
# Path where executable will be generated, obtained looking
# at the cmake scripts
EXECPATH=$BUILDPATH/src/main
echo "BUILD path is $BUILDPATH"

# TODO test if exec file exists
if [ ! -f $BUILDPATH/src/main ]; then
   echo "Binary file $BUILDPATH/src/main missing. Run calculatePI_build.sh wrapper first. Exiting..."
   exit 1
fi

# Execute generated binary if available
echo "Found executable in $EXECPATH"
echo "Starting computation..."
$EXECPATH

echo "Result can be found in $BUILDPATH"

