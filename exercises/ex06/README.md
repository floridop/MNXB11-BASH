Add the course binary path to your PATH

1) Edit `~/.bash_profile` with your favorite editor
2) Add the following line **at the end** of the file:

```
export PATH=/projects/hep/fs10/mnxb11/bin:$PATH
```

3) To test that it worked, `source` the file to import the environment:

```
source ~/.bash_profile
```

4) If it all worked,

the command `which startmnxb11container.sh` should return:

```
/projects/hep/fs10/mnxb11/bin/startmnxb11container.sh
```

And if you try to autocomplete the `startmnx` string 
by typing `startmnx` and repeatedly pressing the TAB key 
the system should autocomplete it to 

`startmnxb11container.sh`


