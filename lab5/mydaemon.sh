#!/bin/bash
while true
do
    echo "Check for hidden files"
    files=$(shopt -s nullglob dotglob; echo /home/folder1/*)
    if [ ${#files} -gt 0 ]
    then
        echo "Move any files from folder1 to folder2"
        mv /home/folder1/* /home/folder2/
    fi
done
