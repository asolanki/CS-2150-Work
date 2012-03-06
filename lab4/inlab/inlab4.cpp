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

int main()
{
    union foo {
        float f;
        unsigned int ui;
    } bar;

    cout << std::numeric_limits<float>::max() << endl;
    cout << std::numeric_limits<double>::max() << endl;
    cout << std::numeric_limits<unsigned long>::max() << endl;

    int a = 0;
    unsigned int b = 0;
    float c = 0.0;
    double d = 0.0;
    char e = '0';
    bool f = false;
    int* g = NULL;
    char* h = NULL;
    double* i = NULL;
    cout << g << h << i << endl;
    a = 1;
    b = 1;
    c = 1.0;
    d = 1.0;
    e = '1';
    f = true;

    a = 0;


    /* primitive arrays */

    int IntArray[10];
    char CharArray[10];
    int IntArray2D[6][5];
    char CharArray2D[6][5];

    for (int i = 0; i < 10; i++)
    {
        IntArray[i] = i;
    }

    for (int i = 0; i < 10; i++)
    {
        char ch = 'a';
        CharArray[i] = ch;
        ch++;
    }

    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            IntArray2D[i][j] = i + j;
        }
    }
    
    char ch = 'a';

    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            CharArray2D[i][j] = ch;
            ch++;
        }
    }

    a = 0; // breakpoint


}
