# Realistic application using container

This folder contains an example of realistic application,
a piece of C++/ROOT code that approximates Pi using a Monte Carlo method.

The source code depends on the ROOT framework to run. The system must have
a working ROOT installation to compile and run the code.

For MXNB11 this code must be run inside the course container.

## Folder contents

.
├── CMakeLists.txt # cmake config file
├── README.md # This document
├── scripts # Scripts used to automate the calculation
│   ├── buildnrun_picalc.sh # Automation script that builds the software
│   ├── calculatepi.sbatch # sbatch script to submit the calculation
│   └── runincontainer.sh # Wrapper script to build and run the software in the container
└── src # Source code of the pi calculation program
    ├── CMakeLists.txt # cmake configuration
    ├── helper.hpp # helper header to define certain functions
    └── main.cxx # main c++ code,  based on ROOT

## Description of the process

### 1. Build and run the provided code

The code must be first build using a compiler. The script `buildnrun_picalc.sh` will
compile and execute the code. Inspect the script to understand what it does.

The result of the compilation and the execution will be in the `build/` folder.

The executable program can be found in `build/src/main`. You can try running it
after the `buildnrun_picalc.sh` has exited with no errors.

### 2. Submit the script to a worker node and submit to a worker node

the sbatch script `calculatepi.sbatch` contains two examples of how to run
the `buildnrun_picalc.sh` on a computing node.


## Usage

### 1. Frontend compilation and execution, for testing
To run and compile the code on the frontend, run one of:

`startmnxb11container.sh buildnrun_picalc.sh`
`runincontainer.sh`

### 2. Worker node compilation and exection, for homework

To run and compile on a worker node using SLURM, edit and modify the provided 
sbatch script `calculatepi.sbatch`

### 3. Inspecting results

The code compilation and execution results can be found in two files:

  - slurm-<jobidcode>.out: standard output of the script
  - src/pi_hit_miss.png 


 
