#!/bin/sh

#SBATCH -J "MNXB11 Pi homework"
#SBATCH --time=00:01:00
#SBATCH -A hep2023-1-6
#SBATCH --mem 1M

# Print computing node hostname and unique ID
echo "Running on $(hostname) $(cat /etc/machine-id)"

# Launch the wrapper script 
runincontainer.sh --build --run
