If your prompt already looks like this:

```
[yourusername@cosmos-pkf currentfoldername]
```
Then you can skip this exercise.

Instead if your prompt looks like this:

```
bash-5.1$
```

It means that something went wrong during COSMOS home folder
initialization of the environment for your user.

To fix this, run the following command:

```
cp -b /etc/skel/.* ~
```

This will copy over to your home folder important files
used to initialize the environment.

close and reopen the terminal. You may need to logout if you are 
logged in via SSH only.

**NOTE**: Do **NOT** run the suggested command if your prompt
looks fine!
