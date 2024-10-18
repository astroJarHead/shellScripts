# Unix/Linux shell scripts

I store some shell scripts here that I wrote or used and find useful. Use at your own risk :)

## my_rsync.sh

This script runs an rsync back-up fromone "machine" to another "machine" as a Bash sh script. 
A logfile is written and stored to a directory of log-files to record the backups conducted.
The user gets progress output to the command line as the script progresses so there is some feedback 
on the files backled up and the progress and time the script is taking to complete the task.

## rawprocMedea

This script is an example of simple automation of data processing via a shell script that was run as 
a daily cronjob. WHile the specifics of the data processing itself are not very important, the script 
includes for setting variables based on dates and times, and filename usage that may be useful for 
generic projects. There are eexamples for how to record output to log files and send output to 
the command line so the user is informed of the progress. 

These features may be useful for taking a data processing task, written in some arbitrary 
language(s), and calling these tasks via a shell script run on command or via a cronjob. 

The name comes from "raw processing Medea" where Medea was the name of the machine. 
