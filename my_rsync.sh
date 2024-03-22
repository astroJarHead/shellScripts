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
echo "rsync Script start time:${theStartTime}" > ${logPath}$scriptLog
echo "* " >> ${logPath}$scriptLog
echo "Hello ${USER}! Welcome to the hidden my_rsync script!" >> ${logPath}$scriptLog
echo "This script is running on machine ${HOST}." >> ${logPath}$scriptLog
echo "**\n " >> ${logPath}$scriptLog
 
rsync -av -i --rsh=ssh /Users/bob.zavala/Desktop/bobMacBackUp medea:/mnt/nofs/projects/rsync >> ${logPath}$scriptLog  

## Ending time stuff, close out log
theEndTime=`date +%T`
echo " " >> ${logPath}$scriptLog
echo "*** " >> ${logPath}$scriptLog
echo "rsync Script end time:${theStartTime}" >> ${logPath}$scriptLog
echo "****\n " >> ${logPath}$scriptLog

# Inform the user the script ended

echo " "
echo "**********"
echo "Backup script from this Macbook to Medea completed."
echo "**********"
echo " "
 
