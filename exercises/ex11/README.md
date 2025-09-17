Modify the `captureoutput.sh` script:

1) To print out user information such as

```
uid=yourid(yourusername)
```

by reusing the content of the defined variable `$USERINFO`
and piping it trough the `cut` command with appropriate parameters.

See also the manual for the `id` command.

2) Add this line, part of homework1, to the script. 
```
echo "hw1_$(id -u)_$(date +%Y%m%d_%H%M).tree"
```

Understand how command substitution affects the output. What are the used commands?

