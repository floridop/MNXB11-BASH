--------------------------------------------------------
# MNXB11 BASH Data cleaning production script
--------------------------------------------------------
### Author: Florido Paganelli florido.paganelli@florido.paganelli@fysik.lu.se
###         Lund University
--------------------------------------------------------

This code is a rework of the cleaning data case study.

For the MNXB11 project, you should inspect the code and change it
to your specific project needs.

The two provided BASH scripts accomplish the following:

`smhicleaner.sh` : Removes the headers of SMHI csv standard files and substitutes commas with spaces.
`smhifilter.sh` : Does basic filtering of certain fields

Running the scripts without parameters will show an help message on how to invoke them.

```console
[pflorido@cosmos1 production]$ ./smhicleaner.sh 
Redirecting cleaner logs to 2025-09-26_smhicleaner.sh.log
Missing input file parameter, exiting
----
  To call this script please use
   ./smhicleaner.sh '<path-to-datafile>'
  Example:
   ./smhicleaner.sh '../data/smhi-opendata_1_52240_20200905_163726.csv'
----
[pflorido@cosmos1 production]$ ./smhifilter.sh 
Redirecting filter logs to 2025-09-26_smhifilter.sh.log
Missing input file parameter, exiting
----
  To call this script please use
   ./smhifilter.sh '<path-to-datafile>'
  Example:
   ./smhifilter.sh '../data/smhi-opendata_1_52240_20200905_163726.csv'
----
```

