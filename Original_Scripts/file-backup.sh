#!/bin/bash

# Created By: Fleming, Zackery P.
# Created On: November 2021
#
# This script copies files to a backup folder.
# This script also performs an automated backup
# of the home directory around 4am.

############################################################################
# Copy Method								   #
############################################################################
Copy()
{
	# Seperating filename and file extension
	_FILE=$1
	_DATE=$(date +%d-%m-%y)
	_NAME=${_FILE%.*}
	_EXT=${_FILE#*.}

	echo "backing up $_FILE..."

	# putting the name, date, and extension back together,
	# if there is or is not an extension
	if [[ "$_FILE" == *"."* ]]; then
		# has an extension
		_NEW_FILE=${_NAME}_${_DATE}.${_EXT}
	else
		# has no extension
		_NEW_FILE=${_NAME}_${_DATE}
	fi

	# debuggin purposes
	echo "input file : $_FILE"
	echo "file name  : $_NAME"
	echo "file ext   : $_EXT"
	echo "date       : $_DATE"
	echo "backup file: $_NEW_FILE"

	# copy file to the backup directory
	cp -n $_FILE $2$_NEW_FILE

	# print success message
	echo "$_FILE backed up as: $_NEW_FILE, in $2$_NEW_FILE"
}

############################################################################
############################################################################
# Main Program								   #
############################################################################
############################################################################
file="${1}"
dir=$HOME/file_backup/

if [ -z "$file" ]; then
	echo "the passed argument is empty..."
else
	# make the backup dir in the home directory
	mkdir -p $dir

	# if the argument is a * or not
	if [[ "$file" == * ]]; then
		# backup every file in current directory
		files=($( ls $PWD ))

		# recursivly backup each file in the directory
		for i in "${files[@]}"; do
			if [[ -d $i ]]; then
				echo "$i is a directory...."
			else
				echo File: $i
				Copy $i $dir
			fi
		done

	else
		# copy one file
		Copy $file $dir
	fi
fi

# reset used variables
unset file
unset dir
unset _FILE
unset _NAME
unset _EXT
unset _NEW_FILE
unset i
