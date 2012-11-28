// NOTE: in order to compile this system on Linux (and most Unix
// systems) you will have to include the -lrt flag to g++.  This does
// NOT apply to Cygwin, however.

// This timer has 1/1000 accuracy on Cygwin under Windows, and
// 1/1000000 accuracy under most Linux distributions

#ifndef TIMER_H
#define TIMER_H

#include <iostream>
#include <string>
#include <time.h>
#include <sys/time.h>

using namespace std;

class timer {
private:
  timeval startVar, stopVar;
  bool running;

public:
  timer() : running(0) {}
  ~timer() {}
  timer(timer & myTimer);
  int start();
  int stop();
  string toString();
  ostream & print(ostream &theStream);
  double getTime();
};

ostream & operator<<(ostream & theStream, timer & theTimer);

#endif
