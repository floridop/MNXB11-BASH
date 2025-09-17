Modify the `testif.sh` script so that it has this behavior:

1) If the first two arguments are the same, exit with error.

Example output:

```shell
$./testif.sh arg1 arg2 arg3

More than 2 arguments. Continuing execution

This part of the code is executed only if the arguments are more than 2.
Inverting arguments order.
3gra 2gra 1gra
```

```shell
$ ./testif.sh arg1 arg1 arg3

More than 2 arguments. Continuing execution
Error: The first two parameters are the same string. Exiting...
```
