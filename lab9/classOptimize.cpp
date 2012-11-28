#include <iostream>

using namespace std;

class Numbers {
  public:
    Numbers( int *n1, int *n2, int *n3 );
    ~Numbers();
    int *x1;
    int *x2;
    int *x3;

};

Numbers::Numbers( int *n1, int *n2, int *n3 ) {
   x1 = n1;
   x2 = n2;
   x3 = n3;
}

Numbers::~Numbers() {
    delete x1;
    delete x2;
    delete x3;
}

class MoreNumbers : public Numbers {
    public:
      MoreNumbers( int *n1, int *n2, int *n3, int *n4 );
      ~MoreNumbers();
      int *x4;
};

MoreNumbers::MoreNumbers( int *n1, int *n2, int *n3, int *n4 ) : Numbers ( n1, n2, n3 ) {
    x4 = n4;
}

MoreNumbers::~MoreNumbers() {
    delete x4;
}


int main() {
    int t1 = 0;
    int t2 = 2;
    int t3 = 3;
    Numbers *n = new Numbers ( &t1, &t2, &t3 );

    t1 = 5;
    n->x1 = &t1;
    
    t1 = 9;
    t2 = 10;
    t3 = 16;
    int t4 = 15;

    MoreNumbers *m = new MoreNumbers( &t1, &t2, &t3, &t4 );

    delete n;
    delete m;

}
