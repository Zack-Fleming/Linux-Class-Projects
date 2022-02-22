#!/bin/bash

# Created By: Fleming, Zackery P.
# Created On: September 2021

# this script creates a 'project template', with
# a predefined structure of directories and
# template files

NAME_INPUT="${1}"

# check if the input was empty
if [ -z "$NAME_INPUT" ]; then
	echo "error: there was no name input..."
else
	# create some directories
	mkdir $NAME_INPUT		# main directory
	mkdir $NAME_INPUT/Src		# srource directory
	mkdir $NAME_INPUT/Src/Main	# code source subdirectory
	mkdir $NAME_INPUT/Src/Resources # code resource subdirectory
	mkdir $NAME_INPUT/Build		# build directory


	# create a README file
	echo "
$NAME_INPUT README

This is a template README file.
Change this text to suit the project needs.
	" > $NAME_INPUT/README.txt

	# craete a LISENCE file
	echo "
Dafault liscense text. This text can be changed to be tailored to the project requirements.


MIT License

Copyright (c) $(date +"%Y") $USER

Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
and associated documentation files (the \"Software\"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial 
portions of the Software.

THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
	" > $NAME_INPUT/LICENCE.txt


	# create a NOTICE file
	echo "
Default $NAME_INPUT NOTICE text. This text should contain a list of other Copyright holders of any
portions of code that exist. This is mainly required with the apache license. If the project is not
protected under this license, this file can be left alone or deleted.

Example of an entry in this file:
This product includes software developed at
<SITE NAME> (URL)
	" > $NAME_INPUT/NOTICE.txt
fi

# unset used variables
unset NAME_INPUT




















