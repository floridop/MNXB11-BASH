#!/bin/sh

#SBATCH -J "MNXB11 Pi homework"
#SBATCH --time=00:01:00
#SBATCH -A hep2023-1-6
#SBATCH --mem 1M

# Launch the wrapper script 
runincontainer.sh
