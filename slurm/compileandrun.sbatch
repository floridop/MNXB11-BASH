#!/bin/bash

#SBATCH -t 00:05:00
#SBATCH -A hep2023-1-1
#SBATCH -p hep
#SBATCH -J MNXB11-compileme

apptainer run -B /run/user:/run/user -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif /home/pflorido/tests/Aliceprob/compileandrun.sh
