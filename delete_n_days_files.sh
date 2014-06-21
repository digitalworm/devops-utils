#!/bin/sh

if [ -z $1 ]
then
        echo "Please specify target location."

elif [ -z $2 ]
then
        echo "Please specify number of days."
else
        number_of_files=`find $1 -mtime +$2 | wc -l`
        echo "${number_of_files} file(s) will be deleted."

        find $1 -mtime +$2 -exec rm {} \;
fi
