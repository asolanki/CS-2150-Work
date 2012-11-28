/*
 * Adarsh Solanki
 * as5nr
 * 4/8/12
 * threexplusone.cpp
 * CS 2150 Lab 9: Pre-Lab
 */

#include <iostream>
#include "timer.h"
#include <cstdlib>

using namespace std;

extern "C" int collatz(int);

int main() {
    int param;
    int count;
    timer t;

    cout << "What number?" << endl;
    cin >> param;
    cout << "How many times?" << endl;
    cin >> count;
    
    t.start();

    for (int i = 0; i < count; i++) {
        collatz(param);
    }
    t.stop();

    double avg = t.getTime()*1000/count;

    cout << "Result: " << collatz(param) << endl;
    cout << "Average Time: " << avg << " milliseconds" << endl;
    return 0;
    


}
