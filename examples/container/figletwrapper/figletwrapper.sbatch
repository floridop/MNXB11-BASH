#!/bin/sh

#SBATCH -J "MNXB11 figlet wrapper"
#SBATCH --time=00:01:00 
#SBATCH -A hep2023-1-6

# String to pass to figlet, edit to change
FIGLETPARAMS="-f banner $(hostname)"

# start the container with the minimum needed, passing the figlet application with parameters inside the $FIGLETPARAMS variable
apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif figlet $FIGLETPARAMS

