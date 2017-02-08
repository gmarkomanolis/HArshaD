#Open Darshan
#v0.1
#George Markomanolis
#Usage:
#1) To load your last experiment on the same day, execute ./open_darshan.sh
#2) To load darshan data from specific job, execute ./open_darshan.sh job_id
# Declare the darshan path where the logs are saved in the darshan_path variable

#!/bin/bash

export darshan_path="/project/logs/darshan/"

if [ $# -eq 0 ]; then

year=`date +"%Y"`
month=`date +"%-m"`
day=`date +"%-d"`


file=`ls -ltr $darshan_path/$year/$month/$day/$USER* | tail -n 1 |  awk '{print $9}'`

else
file=`ls -ltr $darshan_path/*/*/*/$USER*"_id"$1* | tail -n 1 |  awk '{print $9}'`

fi

darshan-job-summary.pl $file


file2=${file/darshan.gz/pdf}
pdf_file=`echo $file2 | awk -F "/" '{print $8}'`

#echo $pdf_file
evince $pdf_file &
