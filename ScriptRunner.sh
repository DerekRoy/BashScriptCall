#!/bin/bash

scripts=("/home/guru/Documents/test.py"
	 "/home/guru/Downloads/test.py"
	 "/home/guru/Desktop/test.py"
	)

names=("Documents_Test"
       "Downloads"
       "Desktop"
      )

for ((i=0;i<${#scripts[@]};++i)); do
	gnome-terminal -x sh -c "echo '\033]0;"${names[i]}"\a'; python "${scripts[i]}"; echo ; exec bash"&
done
