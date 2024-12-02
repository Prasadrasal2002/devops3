#!/bin/bash
dir_path=/home/devops/project_file/git-dir

if [ ! -d $path ]
then
	echo "directory does not exist"
fi
file_path=$dir_path/testing-file

if [ -f $file_path ]
then
	touch $file_path
fi

if [ $?=0 ]
then
	echo "file is craeted successfully"
else
	echo "file not exist"
fi
if [ -f $file_path ]
then
	echo "untrack status................. "
	git status

	git add .
	echo "stage status................... "
	git status
	
	git commit -m "file is ready for commit"
	echo "tracked status................. "
	git status
fi








