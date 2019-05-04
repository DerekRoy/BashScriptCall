# BashScriptCall
A script used in Ubuntu to execute python scripts from different directories in new terminal windows. This script requires a bit of set up, below are instructions for setting up your workspace to accomodate for the these changes. Feel free to contribute to this code, the read me, or the project to make it better for others to use.  

## Script to Run Python in New Windows (Ubuntu)
Open the terminal window and change directories to the directory containing the ScriptRunner.sh file. 
![Directory change](images/Picture1.png). 

### GIVE THE SCRIPT EXECUTION PERMISSIONS
Change execution permissions on file if necessary with: `chmod u+x ScriptRunner.sh`. 
![Permissions change](images/Picture2.png). 

### EDIT YOUR BASH FILE
Go in to your bashrc file to allow windows to retain names when changed.\s\s 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`vim ~/.bashrc`\s\s 
![vim bash command](images/Picture3.png)\s\s
![bashrc file in vim](images/Picture4.png)\s\s

Press i and scroll down till you find a line that looks like this:\s\s 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"`\s\s 
![ps1 line in bashrc file](images/Picture5.png)\s\s

Change:  
`PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"`\s\s
to:\s\s  
`PS1="${debian_chroot:+($debian_chroot)}\u@\h \w$"`\s\s
![ps1 line in bashrc file after changing the line](images/Picture6.png). 

Press the escape key.  
Enter a : with the keyboard.\s\s
Type `<wq!>`\s\s
![wq! in vim to exit](images/Picture7.png)\s\s

Now execute: `source ~/.bashrc`.\s\s
![source ~/.bashrc command](images/Picture8.png)\s\s

[Setting Gnome-Terminal Titles Froumn](https://askubuntu.com/questions/30988/how-do-you-set-the-title-of-the-active-gnome- terminal-from-the-command-line)\s\s

### **IN CASE YOU MESS UP**
[Forumn on restoring bashrc to default](https://askubuntu.com/questions/404424/how-do-i-restore-bashrc-to-its-default)\s\s
The below lines will reset your bash file:  
`/>/bin/cp ~/.bashrc ~/my_bashrc`\s\s
`/bin/cp /etc/skel/.bashrc`\s\s
`~/ source ~/.bashrc`\s\s 
![Commands to reset bashrc file](images/Picture9.png). 

### CHOOSING THE SCRIPTS TO RUN
To choose what scripts to run you need to go into the ScriptRunner.sh file and change the scripts array entries.  
Simply add in the absolute file path of your script with the script in it, for example:\s\s
     `scripts=(“/Home/gurus/Documents/test.py” “...”)`\s\s
Then in the names array you can give the terminal a unique name:  
     `names=(“Documents_Test” “...”)`
Names can not contain spaces.\s\s 
![changing file paths in the script](images/Pictures10.png). 

Finally run the code by entering:  
`./ScriptRunner.sh`\s\s 
![command to run ScriptRunner.sh file](images/Pictures11.png). 

Then enter and run that in the command line.\s\s
![Example of window outputs of test files](images/Pictures12.png). 

### Hopefully this is helpful.



