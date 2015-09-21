#Bash_Works
This is/will_be a collection of aliases, shell scripts and functions that make my life easier.  Each file contains notes describing what it does.  If you know what to do with them, have fun... 

I include aliases, functions, and other snippets in .bash files.  The intention is you will just copy contents into your own bash profile.  Shell scripts are  stored in .sh files.  They can be installed intact and then just `chmod +x` them to make them executable.

If you need a refresher, I included some basic tips for how to set them up and use them. 

>	Note:as a recently self-taught coder, I get that this is all gibberish until it is not.  This is my attempt to help someone else along the road, so reach out if anything is unclear.  



###Aliases, Functions & Shell Scripts
**Aliases** work as shortcuts.  They are essentially short functions, one or a series of bash commands, that take no arguments, that are assigned to variables for quick recall. 

**Functions**, well, they are functions and can be passed arguments as well.  Often times, I use functions just because the multi-line syntax they allow makes it much easier to build and edit more complex shortcuts.

**Aliases** and other bash settings are typically stored at the per user level, and so reside in the users home directory.  

**Shell Scripts**



#Summary of files

**aliases** - just a bunch of shortcuts I use. They are broken into basics, and then environment specific. e.g. in production I like a simple shortcut that gives me a snapshot of all running services and applications that are mission critical.

**db-open_for_current_project** - func - **db** - when used in a project directory, looks up the database config profile, takes care of authentication and opens the database console in the project database.





#Howtos - the Basics

Aliases and functions can very easily be added to your bash profile or config file to make them accessible.

The file we are looking for will vary depending on the system you are working on.  If you want to use them locally, say on a mac, the settings file is called ".bash_profile".  If you are working on a remote server, say linux, the settings file is ".bashrc".  If they don't exist, you can easily create one.

To get to your home directory, open terminal and type `cd ~`.  Type `ls -a` to see all the files in the directory.  Files that are preceded with a'.' are hidden files and the **-a** flag means show all files including hidden.  

You can just copy and paste any of the aliases or functions here directly into your bash profile. Once saved, reload the file by typing `. ~/.bash_profile`.  The commands should now work.





