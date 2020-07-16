#!/bin/sh

# Get date in English and custom format.
TIME=`env LC_ALL=en_US.en date +'%H:%M:%S, %A, %m/%d/%Y %Z'`

# $1 and $2 are input args of the **.sh file.
TEXT="Hi Wei,\n\nThe job (PID: $1 $2) you submitted has been finished at $TIME. Please\
 go back to check the results as soon as possible!\n\nFaithfully,\nYour Mac"

# Mail subject
SUB="Update!"

# E-mail address list
ADDR[0]="wangwei"    #localhost
ADDR[1]="1653563@tongji.edu.cn"
ADDR[2]="wei.wang@jhu.edu"
ADDR[3]="13155590878@163.com"
ADDR[4]="ww000721@gmail.com"

# Send emails
for i in {0..4}
do
echo $TEXT|mail -s $SUB ${ADDR[$i]}
done
