/*
 * Adarsh Solanki
 * as5nr
 * 2/4/12
 * postfixCalculator.h
 */

#ifndef POSTFIXCALCULATOR_H
#define POSTFIXCALCULATOR_H
#include "stack.h"
using namespace std;

class postfixCalculator {
    public:
        postfixCalculator();        // constructor
        postfixCalculator& operator=(const postfixCalculator& source);
        void addNum(int x);         // add integer x to stack
        void add();                 // sums top two values
        void subtract();            // finds the differences of top two values
        void multiply();            // multiplies the top two values
        void divide();              // divides the top two values
        void negate();              // negates the top-most value 
        int topValue();             // returns top value from stack


    private:
        stack *stk;                  // underlying stack
};
#endif
