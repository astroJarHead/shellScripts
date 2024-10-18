#! /bin/sh
## My little rsync-y script to run via a cronjob
## or as commanded. 
## Bob Zavala me fecit
##

# Inform the user the script is indeed starting

echo " "
echo "**********"
echo "Backup script from this Macbook to Medea starting."
echo "This is using rsync."
echo "**********"
echo " "

## Calendar stuff
theDate=`date +%F`
theStartTime=`date +%T`


## setup log file name and path, initiate log
scriptLog="rsyncScript-${theDate}-${theStartTime}.log"
log="rsync-${theDate}-${theStartTime}.log"
logPath="/Users/bob.zavala/rsyncLogs/"

## If desired, here's a one-line variable of the log
## theLogg="/Users/bob.zavala/rsyncLogs/rsync-${theDate}-${theStartTime}.log"

echo "rsync Script start time: ${theStartTime}\n " > ${logPath}$scriptLog
echo "rsync Script start time: ${theStartTime}\n "
echo "** " >> ${logPath}$scriptLog
echo "** "
echo "Hello ${USER}! Welcome to the my_rsync script!" >> ${logPath}$scriptLog
echo "Hello ${USER}! Welcome to the my_rsync script!"
echo "This script is running on machine ${HOST}." >> ${logPath}$scriptLog
echo "This script is running on machine ${HOST}."
echo "**\n " >> ${logPath}$scriptLog
echo "**\n " 

## The format of the command on the next line, using re-direction, hides the output of rsync from the user.
## All output is placed into the log file. 
## rsync -av -i --rsh=ssh --progress /Users/bob.zavala/Desktop/bobMacBackUp medea:/mnt/nofs/projects/rsync >> ${logPath}$scriptLog  

## By using the option to name the log file the progress in placed in the log file and the output of
## the progress is NOT re-directed and is visible to the user. This visible progress display is more
## user friendly.
rsync -av -i --rsh=ssh --progress --log-file=${logPath}$scriptLog /Users/bob.zavala/Desktop/bobMacBackUp medea:/mnt/nofs/projects/rsync 

## Ending time stuff, close out log
theEndTime=`date +%T`
echo " " >> ${logPath}$scriptLog
echo "*** " >> ${logPath}$scriptLog
echo "rsync Script end time :${theStartTime}" >> ${logPath}$scriptLog
echo "****\n " >> ${logPath}$scriptLog

# Inform the user the script ended

echo " "
echo "**********"
echo "Backup script from this Macbook to Medea completed."
echo "**********"
echo " "
 
