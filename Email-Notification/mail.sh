#!/bin/sh

TIME=`env LC_ALL=en_US.en date +'%H:%M:%S, %A, %m/%d/%Y %Z'`

TEXT="Hi Wei,\n\nThe job (PID: $1 $2) you submitted have been finished at $TIME. Please go back to check the results as soon as possible!\n\nFaithfully,\nYour Mac"

# Mail subject
SUB="Update!"

ADDR0="wangwei"    #localhost
ADDR1="1653563@tongji.edu.cn"
ADDR2="wei.wang@jhu.edu"
ADDR3="13155590878@163.com"

echo $TEXT|mail -s $SUB $ADDR3
