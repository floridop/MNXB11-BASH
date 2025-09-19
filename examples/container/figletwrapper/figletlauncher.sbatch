#!/bin/sh

#SBATCH -J "MNXB11 figlet launcher"
#SBATCH --time=00:01:00 
#SBATCH -A hep2023-1-6

# String to pass to figlet, edit to change
FIGLETPARAMS="-f banner $(hostname)"

# Launch figlet using the wrapper BASH script (the script must be in the same folder as this sbatch file!)
./figlet.sh $FIGLETPARAMS

