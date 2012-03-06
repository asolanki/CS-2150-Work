/*
 * Adarsh Solanki
 * as5nr
 * 2/11/12
 * prelab4.cpp
 */
#include <iostream>
#include <cstdlib>
#include <string>
using namespace std;

// sizeOfTest implementation
void sizeOfTest()
{
    // size of primitives
    cout << "Size of int: " << sizeof(int) << endl;
    cout << "Size of unsigned int: " << sizeof(unsigned int) << endl;
    cout << "Size of float: " << sizeof(float) << endl;
    cout << "Size of double: " << sizeof(double) << endl;
    cout << "Size of char: " << sizeof(char) << endl;
    cout << "Size of bool: " << sizeof(bool) << endl;

    // size of pointers
    cout << "Size of int*: " << sizeof(int*) << endl;
    cout << "Size of char*: " << sizeof(char*) << endl;
    cout << "Size of double*: " << sizeof(double*) << endl;
}

// outputBinary() implementation
void outputBinary(unsigned int x)
{
    string result = "0";
    if (x == 0)
    {
        result = "00000000000000000000000000000000";
        cout << result << endl;
        return;
    }
    for (int i = 31; i > -1; i--)
    {
        if (x & (1 << i))
        {
            result += "1";
        } 
        else
        {
            if (result.length() > 0)
            {
                result += "0";
            }
        }
    }
    cout << x << " in binary form: ";
    cout << result << endl;

}

// overflow() implementation
void overflow()
{
    unsigned int i = 4294967295;
    cout << i << endl;
    i++;
    cout << i << endl;
    cout << "This happens because the max unsigned int is a 32-bit binary integer with a 1 in every place value.  When this is incremented by one, all of the bits are flipped as the highest place value is 'carried-over' into overflow, and the data is lost. " << endl;
}

int main()
{
    string s;
    cout << "Enter number 'x'" << endl;
    cin >> s;
    int x = atoi(s.c_str());

    sizeOfTest();
    outputBinary(x);
    overflow();
}
/*
what happens when you add 1 to an unsigned int variable containing the 
maximum value of an unsigned int?
Does the program halt?
What answer do you get?
Why does this happen?
Your function should create an unsigned int, give it the max value, and 
add 1 to that. By printing out the result, you will effectively answer 
the first 3 of the 4 questions. Answer the last question in a cout 
statement (NOT as a comment!). The function takes in no parameters.
*/

/* 
 * magic 32-bit fp number is -38.875
 *      convert this to little-endian binary expressed in hex 
 *
 * other fp number is 0x00401f41 (little-endian!)
 *      conver this to a 32-bit fp number
 *
 */
