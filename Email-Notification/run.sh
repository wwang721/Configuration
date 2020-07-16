#!/bin/sh

# The executable file.
EXEC="./test"

# $! := PID of the last job.
# Args following **.sh file are represented as $1, $2 ... in the **.sh file.
nohup $EXEC > output && ./mail.sh $[$!+1] $EXEC &
