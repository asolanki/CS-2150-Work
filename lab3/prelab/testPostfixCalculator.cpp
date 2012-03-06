/*
 * Adarsh Solanki
 * as5nr
 * 2/4/12
 * testPostfixCalculator.cpp
 */

#include <iostream>
#include <cstdlib>
#include <string>
#include "postfixCalculator.h"

class postfixCalculator;

int main ()
{
    postfixCalculator p;

    /*
    p.addNum(5);    // stack: 5
    p.addNum(6);    // stacl: 5  6
    p.add();        // stack: 11
    p.addNum(4);    // stack: 4  11
    p.addNum(3);    // stack: 3  4  11
    p.addNum(4);    // stack: 4  3  4  11
    p.subtract();   // stack: -1 4  11
    p.add();        // stack: 3  11
    p.multiply();   // stack: 33
    p.negate();     // stack: -33
    p.addNum(-3);   // stack: -3 -33
    p.divide();     // stack: 11
    */

    while (true)
    {
        string s;
        cin >> s;
        if (!cin.good())
            break;

        if (s == "-")
        {
            p.subtract();
        }
        else if (s == "+")
        {
            p.add();
        }
        else if (s == "*")
        {
            p.multiply();
        }
        else if (s == "/")
        {
            p.divide();
        }
        else if (s == "~")
        {
            p.negate();
        }
        else
        {
            p.addNum(atoi(s.c_str()));
        }
        
    }
    cout << "Result: " << p.topValue() << endl;
}
