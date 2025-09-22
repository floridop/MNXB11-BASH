#!/bin/bash

# CODEPARAM contains the N value to be injected in the C++ code 
# before building.
# 1e6 is the default.
CODEPARAM=${1:-1e6}

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

# This is a trick to change the C++ code on the fly, since
# the provided code is not smart enough to accept command
# line parameters. Definitely an hackish way of developing!
# But showcases the power of string handling in BASH.
echo "Modifying source code with parameter: $CODEPARAM"
echo "A backup if the original code will be in $BASEDIR/src/main.cxx.backup"
sed -i'.backup' 's/  constexpr long long N = .*;/  constexpr long long N = '"$CODEPARAM"';/' $BASEDIR/src/main.cxx

# Path to Cmake build directory
BUILDPATH=$BASEDIR/build
# Path where executable will be generated, obtained looking
# at the cmake scripts
EXECPATH=$BUILDPATH/src/main
echo "BUILD path is $BUILDPATH"

# Create the build path directory, skip if it already exists
echo "Creating directories and compiling"
if [[ ! -d $BUILDPATH ]]; then 
   echo "Creating build path"
   mkdir $BUILDPATH
else
   echo "Build path already existing"
fi

# Move to the build path
cd $BUILDPATH

# Build code according to developer's instructions
echo "Building code..."
make clean
cmake $BUILDPATH/..
make

if [[ $? -ne 0 ]]; then
   echo "Compilation failed, see compilation errors. Exiting..."
   exit 1
fi

# Execute generated binary if compilation succeeded
echo "Built executable $EXECPATH"
echo "Starting computation..."
$EXECPATH

echo "Result can be found in $BUILDPATH"

