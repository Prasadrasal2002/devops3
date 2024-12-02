#!/bin/bash
dir_path=/home/devops/project_file/git-dir

echo "stage status................... "
if [ ! -d $path ]
	then
		echo "directory does not exist"
fi
file_path=$dir_path/testing-file
	
if [ -f $file_path ]
	then
		git checkout -b  test-branch
		touch $file_path
fi
	
	if [ $?=0 ]
		then
			echo "untrack status................. "
			git status
				
			git add .
			echo "stage status................... "
			git status
				
	if [ $?=0 ]
		then
			git commit -m "file is ready for commit"
			echo "tracked status................. "
			git status
			
	if [ $?=0 ]
		then
			git push new-origin test-branch
			echo "succesfully push"
			git status
	fi
	fi
			
	fi
	
	
	
	
	
	


