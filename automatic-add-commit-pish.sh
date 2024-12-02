#!/bin/bash
dir_path=/home/devops/project_file/git-dir

echo "stage status................... "
if [ ! -d $dir_path ]
	then

		echo "directory does not exist"

fi
branch_name=testing-branch
file_path=$dir_path/test1
if [ -f $file_path ]
	then
		
		git checkout -b $branch_name
		
		echo "file is exit in give path: $file_path"
		
	
	
	if [ $?=0 ]
		then
			echo "untrack status................. "
			git status
				
			git add .
			echo "stage status................... "
			git status
	fi		
	if [ $?=0 ]
		then
			git commit -m "file is ready for commit"
			echo "tracked status................. "
			git status
	fi		
	if [ $?=0 ]
		then
			git push new-origin test-branch
			echo "succesfully push"
			git status
	fi
else
echo "file does not exist: $file_path"	
fi
	
	
	
	
	
	


