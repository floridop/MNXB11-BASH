--------------------------------------------------------
# MNXB11-2024-homework4
--------------------------------------------------------
### Author: Florido Paganelli florido.paganelli@fysik.lu.se
###         Lund University
--------------------------------------------------------

This homework is graded based on accomplishing five tasks.

For the submission you should use the MNXB11-homework repository created during tutorial 2.

To prepare for the submission do the following on COSMOS:

1) Access the local working directory of your MNXB11-homework repository and create a branch for your homework4
```
cd ~/git/MNXB11-homework
git checkout -b homework4
```

2) Create a new folder `homework4`
```
mkdir homework4
```

3) Perform the exercise tasks, and for each task remember to follow the section 2. Keep your homework up to date do the following:

5) Add and commit your changes 
  - remember to repeat this any time you make a change!
  - create relevant commit messages!

Example:
```
git add TODO
git commit -m 'Adding task 1 information  to the template'
```

7) Push your changes to the remote repository in an homework4 remote branch
```
git push origin homework4
```

6) Once done, find the github permalink to your updated template file.
Browse your homework4 branch in github until you find the template file you pushed.
On the top right there are three dots. Click on them and select "Copy Permalkink"
TODO: pics
The link looks something like this:
https://github.com/floridop/MNXB11-BASH/blob/d1fb4deb46c7dbadfc9bf8746afc2a161647c2c8/homework4/TODO

7) Test that if you copy paste the link URL in a new browser page it goes to the expected file.

8) Submit the link to canvas for Homework4.


All these operations must be done on COSMOS and it is assumed
that you followed Tutorial 2 and Tutorial 4.

Submitting tasks 1 and 2 by the deadline will grant you one point.

You can submit multiple times in canvas to notify the teacher that there have been changes that you want to be corrected.

## Tasks 1 and 2:
Complete tasks 1 and 2 as described in slide TODO.
Once done. execute the following command on COSMOS (it's ok to copy-paste):
```
diff -y /etc/skel/ ~ > ~/git/MNXB11-homework/homework4/tasks12.diff
```

This will generate a file with differences that the teacher will inspect for grading.

Add the file to your git repo and push to your origin:

```
git add tasks12.diff
git commit -m 'Submission task 1,2'
git push origin homework4
```

## Task 3:
3.1. Copy the `smhicleaner.sh` production script from the MNXB11-BASH repository:
```
cp ~/git/MNXB11-BASH/casestudy/production/smhicleaner.sh ~/git/MNXB11-homework/homework4/
```  

3.2. Make requested changes TODO to the `smhicleaner.sh` script

3.3. Add, commit and push to your remote

```
git add smhicleaner.sh
git commit -m 'Submission task3'
git push origin homework4
```

## Task 4 (1 points):
4.1. Copy the smhicleaner.sh production script from the MNXB11-BASH repository:
```
cp ~/git/MNXB11-BASH/casestudy/production/smhifilter.sh ~/git/MNXB11-homework/homework4/
```

4.2. Make requested changes TODO to the smhicleaner.sh script

4.3. Add, commit and push to your remote

```
git add smhifilter.sh
git commit -m 'Submission task4'
git push origin homework4
```

## Task 5 (1 points):
Create a TODO script in the homework4 folder, add commit and push to your remote.


# 2. Keep your homework4 up to date

For each task, remember to do the following:

1) Add and commit your changes to the task file
  - remember to repeat this any time you make a change!
  - create relevant commit messages!

Example for task 1:
```
git add tasks12.diff
git commit -m 'Adding task 1 and 2 requested file'
```

2) Push your changes to the remote repository in an homework4 remote branch
```
git push origin homework4
```


