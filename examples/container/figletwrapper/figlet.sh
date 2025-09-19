#!/bin/bash

apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif figlet $@
