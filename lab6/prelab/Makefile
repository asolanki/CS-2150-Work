# Adarsh Solanki
# 3/12/12
# as5nr
# CS 2150: Lab 6 Makefile

# which C++ compiler?
CXX = g++ -O2

# with which flags?
CXXFLAGS = -g 

# what are the .o files for the program?
OFILES = wordPuzzle.o hashTable.o timer.o 

main: $(OFILES)
	$(CXX) $(OFILES)

clean: 
	rm *.o

wordPuzzle.o: wordPuzzle.cpp 
hashTable.o: hashTable.cpp
timer.o: timer.cpp
