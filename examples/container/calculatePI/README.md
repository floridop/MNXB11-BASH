# Realistic application using container

This folder contains an example of realistic application,
a piece of C++/ROOT code that approximates Pi using a Monte Carlo method
of drawing a circle in a square, counting the dots that end
up inside the circle and multiply them by 4. 

The source code depends on the ROOT framework to run. The system must have
a working ROOT installation to compile and run the code.

For MXNB11 this code must be run inside the course container.

## Folder contents

.
├── CMakeLists.txt # cmake config file
├── README.md # This document
├── scripts # Scripts used to automate the calculation
│   ├── buildnrun_picalc.sh # Automation script that builds and run the software
│   ├── runincontainer.sh # Wrapper script to build and run the software in the container
│   └── calculatepi.sbatch # sbatch script to submit the calculation
└── src # Source code of the pi calculation program
    ├── CMakeLists.txt # cmake configuration
    ├── helper.hpp # helper header to define certain functions
    └── main.cxx # main c++ code,  based on ROOT

### `src` folder

You do not have to touch any of the content of this folder.

Contains the actual code that does the computations. The meaning of the
contents will be clearer to you as you progress with your knowledge of C++.

`main.cxx` contains the main program

`helper.hpp` contains certain functions and prints relevant output

`Cmakelists.txt` is used by the build system cmake to compile the program.

### scripts folder

The scripts in the `scripts` folder automate tasks that could be done
manually by a C++ programmer, and they can be used also by people with
no C++ knowledge.

`buildnrun_picalc.sh` does the following:

  1. Takes as input a parameter, the number of data points, and changes
     the C++ source code accordingly
  2. Creates a build directory in `build/` and compiles the source code.
     The resulting executable is in `build/src/main`
  3. runs `build/src/main`

The program requires ROOT to be compiled so it must be run in an environment
that provides the ROOT libraries such as the course container.

`runincontainer.sh` is a wrapper script that runs the `buildnrun_picalc.sh` 
script inside the container with a certain number of datapoints.

`calculatepi.sbatch` is a batch script that needs to be fine-tuned for 
the homework.

## How to use

This code is only meant to be used via the `scripts` folder.

So make sure to be in the scripts folder to do any of the steps described below.

### 1. Frontend compilation and execution, for testing
To run and compile the code on the frontend, run

`startmnxb11container.sh ./buildnrun_picalc.sh`
The default is 1000000 iterations.

A heavier computation with more iterations can be run directly using the script
`./runincontainer.sh`
which is a _wrapper script_ that starts the application inside the container
with a larger number of iterations (300000000)

### 2. Worker node compilation and exection, for homework

To run and compile on a worker node using SLURM:

  1. edit and modify the provided sbatch script `calculatepi.sbatch`
  2. execute the command `sbatch calculatepi.sbatch`
  3. check the results 

### 3. Inspecting results

If run in the frontend, you will see the execution output on the screen.

If run in SLURM, the code output will be in the `slurm-<jobidcode>.out` file
as during the tutorial. You can change the name of the file in calculatepi.sbatch if you wish.

The execution results will be an image of the points used to determine pi, 
that can be found in: build/src/pi_hit_miss.png 


## Profiling required time and memory:

**Profiling** is the action of trying to understand how many resources does
a piece of software require to run.

You can use the GNU `time` application to profile how much time and memory you need 
to request on a worker node. 

For example run the program on the frontend with:

```
/usr/bin/time -v runincontainer.sh
```

wait for the output (it may take long time!!)

And search for the following strings:

`Elapsed (wall clock) time (h:mm:ss or m:ss):` average time required by the program
`Maximum resident set size (kbytes):` maximum memory required to run the program

These numbers can differ depending on how busy the frontend is.

Once you get these numbers, you will need to try them in `calculatepi.sbatch` 
to be sure that it will run on a worker node. Maybe you need a bit more,
maybe a bit less. Try!

NOTE: there is a builtin BASH `time` command that does similar things, but not what we need!
be sure to use `/usr/bin/time` application instead!
