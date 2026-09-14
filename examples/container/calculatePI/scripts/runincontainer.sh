#!/bin/sh

# By default don't do anything
DOBUILD=''
EXECUTE=''

# Scan parameters and setup variables
for param in $@; do 
  if [ $param == '--build' ]; then
     DOBUILD='yes'
  fi
  if [ $param == '--run' ]; then
     EXECUTE='yes'
  fi
done

# If both vars are empty (no parameters), show error message and exit with error
if [ "$#" -eq 0 ]; then
  echo "Please specify one of the options"
  echo "  --build for building"
  echo "  --run for execution"
  exit 1
fi

# These commands below run the wrapper scripts using the container `mnxb11_al9.latest.sif` with minimum required parameters
# -B mounts the project directory inside the container so that is visible also inside the container
# You can add parameters to the application by adding them at the end of the line
# Example: apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh 1e9

# Launch build code wrapper
if [ "x$DOBUILD" == 'xyes' ]; then
   # Passing a parameter here to increase job duration. Can be changed
   apptainer run -B /projects:/projects /projects/hep/fs11/share/mnxb11/containers/mnxb11_al9.latest.sif ./calculatePI_build.sh 3e8
fi

# Launch binary execution wrapper
if [ "x$EXECUTE" == 'xyes' ]; then
   apptainer run -B /projects:/projects /projects/hep/fs11/share/mnxb11/containers/mnxb11_al9.latest.sif ./calculatePI_run_wrapper.sh
fi

