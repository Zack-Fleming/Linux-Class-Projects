This is the README for the file: project-init.sh

This script was the product of the ch. 8 of the Intro to Linux class of my college. This chapter covered
file and directory management (creation, moving, and deletion). 

The assignment was to create a script that creates a standardized project structure, by inputting the project name. This structure had to at least contain a README, LICENSE, and NOTICE text files. Also, the project template could contain some directories. The included directories did not have to have to have any additional files, other than the previously mentioned text files. 

The project structure I defined, was as follows:
  -	Project root directory (named the same as the input)
    -	Src directory (the project source directory)
        -	Main directory (the actual code files)
        -	Resources directory (project resources Ex: images, videos, textures, etc.)
    -	Build directory (built sources of the project)
    -	README.txt
    -	LICENSE.txt
    -	NOTICE.txt

Planned feature(s) in the improved version:
  -	A help, usage, and version texts
  -	A check to see if the a ‘project’ of the inputted name exists 
    -	If so, then append a number to the end of the name
        -	Ex: test, test1, test2, etc.
    -	If not, then create the files as normal
  -	Possibly an argument to change project structure
