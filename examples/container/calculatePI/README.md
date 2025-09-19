# Realistic application using container

This folder contains an example of realistic application,
a piece of C++/ROOT code that approximates pi .

The source code depends on the ROOT framework to run. The system must have
a working ROOT installation to compile and run the code.

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

## Usage
