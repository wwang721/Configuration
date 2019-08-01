#
# Show CPU Information For Mac OS.
# Created by WW on 2019.8.1.
# Copyright © WW. All rights reserved.
#	

#!/bin/sh

NPC=`sysctl hw.physicalcpu| cut -f2 -d:`

NTC=`system_profiler SPHardwareDataType|grep "Cores"| cut -f2 -d:`

NTLC=`sysctl hw.logicalcpu| cut -f2 -d:`

let "NCPC = NTC/NPC "

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
