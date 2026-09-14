#!/bin/sh
# This wrapper script launches the course container and 
# executes the calculatePI binary

# These commands below run the wrapper scripts using the container `mnxb11_al9.latest.sif` with minimum required parameters
# -B mounts the project directory inside the container so that is visible also inside the container
# You can add parameters to the application by adding them at the end of the line
# Example: apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif "applicationname parameters"
apptainer run -B /projects:/projects /projects/hep/fs11/share/mnxb11/containers/mnxb11_al9.latest.sif /tmp/calculatePI


