#!/bin/bash

# Start the MNXB11 container with standard options
apptainer run -B $XAUTHORITY:$XAUTHORITY -B /run/user:/run/user -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif

