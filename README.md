# BashScriptCall
<p>A script used in Ubuntu to execute python scripts from different directories in new terminal windows. This script requires a bit of set up, below are instructions for setting up your workspace to accomodate for the these changes. Feel free to contribute to this code, the read me, or the project to make it better for others to use.</p> 

## Script to Run Python in New Windows (Ubuntu)

Open the terminal window and change directories to the directory containing the ScriptRunner.sh file
![Directory change](images/Picture1.png)

### GIVE THE SCRIPT EXECUTION PERMISSIONS
Change execution permissions on file if necessary with: chmod u+x ScriptRunner.sh
![Permissions change](images/Picture2.png)

### EDIT YOUR BASH FILE
Go in to your bashrc file to allow windows to retain names when changed. 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<vim ~/.bashrc>`
![vim bash command](images/Picture3.png)
![bashrc file in vim](images/Picture4.png)

Press i and scroll down till you find a line that looks like this:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1">`
![ps1 line in bashrc file](images/Picture5.png)

Change:  
`<PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1">`
to:  
`<PS1="${debian_chroot:+($debian_chroot)}\u@\h \w$">`
![ps1 line in bashrc file after changing the line](images/Picture6.png)

Press the escape key.  
Enter a : with the keyboard.  
Type `<wq!>`
![wq! in vim to exit](images/Picture7.png)

Now execute: `<source ~/.bashrc>`
![source ~/.bashrc command](images/Picture8.png)

[Setting Gnome-Terminal Titles Froumn](https://askubuntu.com/questions/30988/how-do-you-set-the-title-of-the-active-gnome- terminal-from-the-command-line)

### **IN CASE YOU MESS UP**
[Restoring bashrc to default forumn](https://askubuntu.com/questions/404424/how-do-i-restore-bashrc-to-its-default)
The below lines will reset your bash file:  
`</>/bin/cp ~/.bashrc ~/my_bashrc>'
`</bin/cp /etc/skel/.bashrc>`
`<~/ source ~/.bashrc>` 
![Commands to reset bashrc file](images/Picture9.png)

### CHOOSING THE SCRIPTS TO RUN
To choose what scripts to run you need to go into the ScriptRunner.sh file and change the scripts array entries.  
Simply add in the absolute file path of your script with the script in it, for example:  
     `<scripts=(“/Home/gurus/Documents/test.py” “...”)>`. 
Then in the names array you can give the terminal a unique name:  
     '<names=(“Documents_Test” “...”)>'
Names can not contain spaces.
![changing file paths in the script](images/Pictures10.png)

Finally run the code by entering:  
     `<./ScriptRunner.sh>`
![command to run ScriptRunner.sh file](images/Pictures11.png)

Then enter and run that in the command line.
![Example of window outputs of test files](images/Pictures12.png)

### Hopefully this is helpful.



