#!/bin/sh

#SBATCH -J "MNXB11 Pi approximation"
#SBATCH --time=00:15:00 
#SBATCH -A hep2023-1-6

apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh 9

