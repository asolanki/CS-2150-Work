/* 
 * Adarsh Solanki
 * as5nr
 * 3/26/12
 * mathfun.cpp
 * CS 2150 Lab 8: Pre-lab
 */

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" int product (int, int);
extern "C" int power (int, int);

int main () {
    int param1, param2;

    cout << "Enter a positive integer!    ";
    cin >> param1;
    cout << "Enter another positive integer!    ";
    cin >> param2;

    if ( param1 < 0 || param2 < 0 ) 
    {
        cerr << "Positive integers only!\n";
        return 1;
    }

    int prod = product( param1, param2 );
    int expo = power( param1, param2 );

    cout << param1 << " x " << param2 << " = "  << prod << endl;
    cout << param1 << " to the power of " << param2 << " = " << expo << endl;

    return 0;

}
