#!/bin/bash

trial=0
exitcode=0
logfile="q3_log"
cmd="q3_cmd.sh"

# Reset log
if [[ -f $logfile ]];then
    rm $logfile
fi

# Run command until it fails
while [[ $exitcode -eq 0 ]]
do
    ./$cmd >> $logfile 2>> $logfile
    exitcode=$?
    trial=$(($trial+1))
done

# Report how many runs it took to fail
echo "Finally met error after $trial trials."
