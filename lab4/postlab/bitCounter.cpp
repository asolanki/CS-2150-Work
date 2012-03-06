/*
 * Adarsh Solanki
 * as5nr
 * 2/15/12
 * bitCounter.cpp
 */

#include <iostream>
#include <cstdlib>
using namespace std;

int main (int argc, char **argv)
{
    while (1)
    {
        // if no arguments, error message
        if (argc == 0)
        {
            cout << "Error: no argument, try again" << endl;
            break;
        }   
        
        int input = atoi(argv[1]);
        int ones = 0;

        while (input > 0)
        {
            ones+=(input % 2);
            input = input/2;
        }
        cout << "Number of 1's: " << ones << endl;
        break;
    }
}

