#
# Show CPU Information For Linux.
# Created by WW on 2019.8.1.
# Copyright © WW. All rights reserved.
#	

#!/bin/sh

NPC=`cat /proc/cpuinfo| grep "physical id"| sort| uniq| wc -l`

NCPC=`cat /proc/cpuinfo| grep "cpu cores"| cut -f2 -d:|uniq`

NTLC=`cat /proc/cpuinfo| grep "processor"| wc -l`

let "NTC = NPC*NCPC"

let "NHTC = NTLC/NTC"


echo "***  CPU INFORMATION  ***"

echo =====================================================

echo Number of Physical CPUs: $NPC

echo Number of Cores in Every Physical CPU: $NCPC

echo Number of Total Cores: $NTC \(* shownodes\)

echo -----------------------------------------------------

echo Number of Hyper-Threadings in Every Core: $NHTC

echo Number of Toal Logical CPUs: $NTLC

echo =====================================================

echo "***"
