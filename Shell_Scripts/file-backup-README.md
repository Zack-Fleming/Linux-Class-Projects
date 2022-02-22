README for: file-backup.sh

This script was one of the projects assigned by the Intro to Linux/Unix class of my college. The 
assignment was to create a script that uses one arguments a filename. The file is then copied to 
a backup directory, and the date is appended to the filename. If the argument passed was an asterisk,
then the script recursively copies the files in the $HOME directory to the backup directory. However, 
this script does not recursively copy the subdirectories of the $HOME directory; the script only skips 
directories, by stating the selected file is a directory.

I am currently developing an improved version that properly compresses files and directories, and not 
just copying them to a directory. The improved version will also come with a help screen, set of 
configurable settings, and adds to the chrontab for auto running the script. This new script is still 
in development. 
