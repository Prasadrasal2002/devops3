#!/bin/bash
dir=/home/devops/project_file/git-dir/sub-dir

if [ ! -d $dir ]
then
        echo "directory does not exist in given path: "$dir
	mkdir $dir
fi
#difine variable for making new directory inside the dir path
new_dir=$dir/dir-extention1
if [ ! -d $new_dir ]
then
        mkdir -p $new_dir
fi

# Define a variable with a list of filenames
files=("file1.txt" "file2.txt" "file3.log" "file4.conf")

# Loop through the filenames and create each file
for file in "${files[@]}"
do
    filepath="$new_dir/$file"
    if [ ! -f "$filepath" ]
    then
        echo "Creating file: $filepath"
        touch "$filepath"
    else
        echo "File already exists: $filepath"
    fi
done

echo "All specified files have been created."


#Organize files by extension
cd "$new_dir" || exit 1
for file in *
do
    if [ -f "$file" ]
    then
 #Extract the file extension
        extension="${file##*.}"

        # Skip files with no extensions
        if [ -z "$extension" ]
	then
            continue
        fi

        # Create a directory for the extension if it doesn't exist
        if [ ! -d "$extension" ]
       	then
            mkdir "$extension"
        fi

        # Move the file into the extention folder
        mv "$file" "$extension"
        echo "Moved $file to $extension"
    fi
done

echo "Files have been organized by extension in $new_dir."

