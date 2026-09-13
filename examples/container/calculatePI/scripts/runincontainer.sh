#!/bin/bash -x

# TODO: add options to compile or run or both
DOBUILD=${1:-'no'}
EXECUTE=${1:-'no'}

for param in $@; do 
  if [[ $param == '--build' ]]; then
     DOBUILD='yes'
  fi
  if [[ $param == '--run' ]]; then
     EXECUTE='yes'
  fi
done

# TODO: change text below
# This command below runs the script using the container `mnxb11_al9.latest.sif` with minimum required parameters
# It is simpler than startmnxb11container.sh because we need much less options to run in batch
# It is best for running on batch systems
# -B mounts the project directory inside the container so that is visible also inside the container
# You can add parameters to the application by adding them at the end of the line
# Example: apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh 1e9

if [[ "x$DOBUILD" == 'xyes' ]]; then
   # Passing a parameter to increase job duration
   apptainer run -B /projects:/projects /projects/hep/fs11/share/mnxb11/containers/mnxb11_al9.latest.sif ./calculatePI_build.sh 3e8
fi
if [[ "x$EXECUTE" == 'xyes' ]]; then
   apptainer run -B /projects:/projects /projects/hep/fs11/share/mnxb11/containers/mnxb11_al9.latest.sif ./calculatePI_run_wrapper.sh
fi

if [[ "x$DOBUILD" == 'xno' && "x$EXECUTE" == 'xno' ]]; then
  echo "Please specify one of the options"
  echo "  --build for building"
  echo "  --run for execution"
  exit
fi


