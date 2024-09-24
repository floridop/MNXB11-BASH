--------------------------------------------------------
# MNXB11-2024-homework4
--------------------------------------------------------
### Author: Florido Paganelli florido.paganelli@fysik.lu.se
###         Lund University
--------------------------------------------------------

This homework is graded based on accomplishing five tasks.

For the submission you should use the `MNXB11-homework` repository created during tutorial 2 - Scenario 1 as described in the steps below.

All the operations described below must be done on COSMOS unless otherwise stated.

It is assumed that you followed and understood Tutorial 2 and Tutorial 4.

Dont' get stuck! If you need clarifications please ask.

It is recommended to ask the teacher for clarification of the behavior of a script you wrote/modified that you do not understand **before submission**.

To get any points on a given script, the script **must run without errors when all parameters are as expected**; a correct algorithm is not enough to get full score. 
In other words, *test your code before submitting!*

If you use ChatGPT or other AI aid, please report it in the submission; describe why and how you used it.
The exercises are quite easy and they do not require extreme pre-knowledge so they should be doable without any aid, hence we're curious to know why you chose to go the AI way if you do.

Max points: 5; max grade: 5. 

## Preparation for submission

Do the following on COSMOS:

1) Update the `MNXB11-BASH` repository we cloned during tutorial 4 to get the latest code updates:
```bash
cd ~/git/MNXB11-BASH
git pull
git pull origin main
```

2) Access the local working directory of your `MNXB11-homework` repository, create and checkout a branch for your homework4 with the following commands:
```bash
cd ~/git/MNXB11-homework
git checkout -b homework4
```

3) Create a new folder `homework4` and cd into it.
```bash
mkdir homework4
cd homework4
```

All the tasks will result in a file that you need to create inside that folder.

## Performing the tasks

You can submit multiple times in canvas to notify the teacher that there have been changes that you want to be corrected.

## Tasks 1 and 2 (0.5 points each):

Submitting tasks 1 and 2 by the deadline will allow you to reach the maximum of 5 points if every task is correct.

If you did the tasks during the tutorial session, you can skip directly to step [T1,2.2.](#t122-once-done-execute-the-following-command-on-cosmos-its-ok-to-copy-paste) below.

### T1,2.1. Perform tasks 1 and 2:
**Download the latest version of tutorial 2 slides for the correct commands to run.**

**Task1:** Improve the default BASH environment by copying the default BASH files as explained in slide 41 - “Problem” (0.5 point)  
       
**Task2:** Extend the PATH variable to be able to run the script startmnxb11container.sh without specifying its full path as in slide 42 (0.5 point)

### T1,2.2. Once done, execute the following command on COSMOS (it's ok to copy-paste):
```bash
diff -y /etc/skel/ ~ > ~/git/MNXB11-homework/homework4/tasks12.diff
```

This will generate a file with differences that the teacher will inspect for grading.

### T1,2.3. Add the file to your git repo and push to your origin:

```bash
git add tasks12.diff
git commit -m 'Submission task 1,2'
git push origin homework4
```

### T1,2.4. Find the permalink for submission
  - T1,2.4.1. Browse your remote repository `MNXB11-homework` on [GitHub](https://github.com)
  - T1,2.4.2. Select the `homework4` *branch*
  - T1,2.4.3. Navigate to the `homework4` *folder*
  - T1,2.4.4. On the upper right corner there are three dots `...` click on those and choose "Copy permalink".  
    Example: The permalinks look like this <https://github.com/floridop/MNXB11-BASH/tree/ad75376caa38aafba6b0dd1aae6b0dcc63f21ff7/homework4>

### T1,2.5. Submit the permalink obtained above on Canvas.

## Task 3 (1 point):

Modify the `smhicleaner.sh` production script

### T3.1. Familiarize with the case study (slide 66). Read the README.md and understand the solution to the case study.
You do not need to do the tasks in the case study, you can look directly at the solution.

<https://github.com/floridop/MNXB11-BASH/blob/d1fb4deb46c7dbadfc9bf8746afc2a161647c2c8/casestudy/code/smhicleaner.sh.solution>

Then look at the production script to understand the differences.

<https://github.com/floridop/MNXB11-BASH/blob/d1fb4deb46c7dbadfc9bf8746afc2a161647c2c8/casestudy/production/smhicleaner.sh>

Try to run the production script to understand what it does.

### T3.2. Copy the `smhicleaner.sh` production script from the `MNXB11-BASH` cloned local copy to your homework4 folder:
```bash
cp ~/git/MNXB11-BASH/casestudy/production/smhicleaner.sh ~/git/MNXB11-homework/homework4/
```  

### T3.3. Modify the production script `smhicleaner.sh` to save the bare data output file with a different separator of your choice, for example a comma “,” (1 point)

While you work on the code you can add, commit and push as much as you want, put please make sure that the final commit before submission is as in the next step.

### T3.4. For submission, add, commit and push to your remote

```bash
git add smhicleaner.sh
git commit -m 'Submission task3'
git push origin homework4
```

### T3.5. Create a new submission on Canvas if you already submitted before.

## Task 4 (1 point):

### T4.1. Familiarize with the `production/smhifilter.sh` script. Learn and understand how to use it.

<https://github.com/floridop/MNXB11-BASH/blob/1bd0b7beb34159a1b9d058f90d49611853726e88/casestudy/production/smhifilter.sh>

### T4.2. Copy the `smhifilter.sh` production script from the `MNXB11-BASH` cloned local copy:
```bash
cp ~/git/MNXB11-BASH/casestudy/production/smhifilter.sh ~/git/MNXB11-homework/homework4/
```

### T4.3. Modify the `smhifilter.sh` script by adding a filter of your choice  (1 point).  
You can use the commands listed in slide 9  
Suggestion: if possible, reuse it during the project, but it's not mandatory.  
This task can be a shared activity done by the whole project team, but each of the team members must submit individually.  

While you work on the code you can add, commit and push as much as you want, put please make sure that the final commit before submission is as in the next step.

### T4.4. Add, commit and push to your remote

```bash
git add smhifilter.sh
git commit -m 'Submission task4'
git push origin homework4
```

### T4.5. Create a new submission on Canvas if you already submitted before.

## Task 5 (max 2 points):

### T5.1. Create a BASH script that is useful for the course final project. It will be graded this way:
  - If the script does not work, doesn’t run, does not do what it is meant to do: 0,5 points.
  - If the script runs with errors: 1-1,5 points.
  - If the script takes care of errors, and exit codes are handled properly (todo slide), 2 points.
This task can be a shared activity done by the whole project team, but each of the team members must submit individually.
Team members shoud test the script to see if it does what it should.

### T5.2. add, push and commit your script(s) to youyr remote origin

```bash
git add <scriptname.sh>
git commit -m 'Submission task5'
git push origin homework4
```

### T5.3. Create a new submission on Canvas if you already submitted before.
