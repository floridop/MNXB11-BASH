#!/bin/sh

# This command runs the script using the container directly without wrapper
# It is best for running on batch systems
apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh

