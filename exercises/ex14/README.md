Create a wrapper script `figlet.sh` outside the container 
that takes as input a string 
and passes it to the container 
to execute figlet inside it and use the string as figlet input.

Hint: use the double quotes in the script!

The script should work like this, with any possible 
string producing different output:

```shell
[pflorido@cosmos-pkf tests]$ ./figlet.sh anystring
2025-09-16T22:23:42+02:00 : Starting container script
                       _        _             
  __ _ _ __  _   _ ___| |_ _ __(_)_ __   __ _ 
 / _` | '_ \| | | / __| __| '__| | '_ \ / _ `|
| (_| | | | | |_| \__ \ |_| |  | | | | | (_| |
 \__,_|_| |_|\__, |___/\__|_|  |_|_| |_|\__, |
             |___/                      |___/ 
2025-09-16T22:23:42+02:00 : Container script exiting
```


