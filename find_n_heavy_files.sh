#!/bin/sh

if [ -z $1 ]
then
        echo "Please specify some path."
elif [ -z $2 ]
then
        echo "Please specify number of files."
else
        find $1 -type f -printf '%s %p\n'| sort -nr | head -$2
fi
