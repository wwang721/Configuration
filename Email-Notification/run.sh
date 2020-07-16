#!/bin/sh

# The executable file.
EXEC="./test"

nohup $EXEC > output && ./mail.sh $[$!+1] $EXEC &
