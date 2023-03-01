Set of programs to learn C and x86-32/x86-64 assembly 
=====================================================

Many of the programs are from one of the following resources:

+ Computer Systems A Programmer's Perspectice by Bryant & O'Halloran
+ Ray Seyfarth's book on 64 bit assembly for linux and osx 
+ K&R Book 
+ Deep C Secrets by Van Der Linden

Generally speaking, the makefiles in each sub directory contain a list of
targets. Some of these targets are executables, more are assembly for a specific
platform. The platforms being targeted are typically either 32 or 64 bit
x86 assembly. 

Any programs generated from problems in Seyfarth's book use Intel Syntax.
Programs generated from practice problems in CSAPP use AT&T syntax. AT&T syntax
is the majority of programs, this was also the default output of the GCC
compiler used to generate the output in many places.

# Usage

The goal is that each subdirectory be self contained. In many cases there will
be either a README or an orgfile giving some context around the programs in the
subdirectory. There is one makefile per subdirectory. The top level make file 
performs a purely house-keeping function: a recursive `make clean`.

The test suite is borrowed from Remzi Arpaci-Dusseau, author of Operating
Systems: Thee Easy Pieces. It is written in Bash and works well. It's used in a
couple of places where we wanted more visibility into what was happening in the
program. 

Generally the programs are trivial examples and for didactic purposes. They are
not intended to be run in production. They also do not represent any sort of
coherant whole. The programs are licensed with the unlicense, info can be found
in the LICENSE file.
