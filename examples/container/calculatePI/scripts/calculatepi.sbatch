#!/bin/sh

#SBATCH -J "MNXB11 Pi approximation"
#SBATCH --time=00:15:00
#SBATCH -A hep2023-1-6

# Launch the wrapper script 
runincontainer.sh
