#!/bin/sh

# This command below runs the script using the container `mnxb11_al9.latest.sif` with minimum required parameters
# It is simpler than startmnxb11container.sh because we need much less options to run in batch
# It is best for running on batch systems
# -B mounts the project directory inside the container so that is visible also inside the container
# You can add parameters to the application by adding them at the end of the line
# Example: apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh 2e10
apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh

