# Inspect some standard BASH initialization files

Check the content of the following files using `cat` or an editor like `code`, 
or your favourite editor:

  * User files:
    * `~/.bashrc`
    * `~/.bash_profile`

   * System files:
     * `/etc/profile`

List the contents of `/etc/profile.d`
     
If on COSMOS:
  * check the content of `/etc/profile.d/tmpdir.sh`  
  * In a BASH shell, print the content of the variables defined in `tmpdir.sh`.
  * Check if there is any file contained in the paths listed in the variables.
  * Some of the above may only make sense when running a SLURM job.
