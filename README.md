Some simple low level code aimed at learning better the fundamentals of x86
===============================================================================

Code examples use exercises from Bryant & O'Halloran (CSAPP second ed.), 
particularly chpt. 5. These problems focus largely on IA32 machine code. 

The numbering of the problems is erratic, the aim is to have this be a 
clearly written repository of c code that presents solutions to simple problems.

The programs are all relatively tiny aimed at learning smalls parts of the
fundamentals. 

The second major resource used for this repository is Ray Seyfarth's book on 64
bit assembly for linux and osx. 

Generally speaking, the makefiles in each sub directory contain a list of
binary targets, grouped under the $EXECUTABLES variable. Calling make at the
top level will run make recursively in all the subdirectories, making all the
small targets.


