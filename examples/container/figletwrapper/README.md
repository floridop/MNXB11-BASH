# Running applications in containers using SLURM

This folder showcases two ways of running applications in containers.

Depending on your workflow you may want to choose one of the other approach.

## Approach 1: 
 1. Create a BASH wrapper script that uses the container (`figlet.sh`)
   so you can test your code anywhere on COSMOS.
 2. Create a SLURM sbatch script that uses the BASH wrapper script (`figletlauncher.sbatch`)

## Approach 2:
 1. Create a SLURM sbatch wrapper that launches the container with the appropriate parameters (`figletwrapper.sbatch`)


