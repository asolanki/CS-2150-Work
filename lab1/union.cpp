#include <iostream>

using namespace std;

int main()
{
    union
    {
        int x;
        int *p;
    } foo;

    foo.x = 3;
    cout << foo.p << endl;
    cout << &(foo.p) << endl;
}
