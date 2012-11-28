# Adarsh Solanki as5nr
# 4/8/12
# Makefile for CS 2150 pre-lab 9

# C++ compiler
CXX 		= g++ -m32
CXXFLAGS 	= -Wall -g

# defines assembler
AS 			= nasm
ASFLAGS 	= -f elf

OFILES = threexplusone.o threexinput.o timer.o

.SUFFIXES: .o .cpp
.SUFFIXES: .o .s

main: $(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)

clean: 
	/bin/rm -f *.o *~
