#include <iostream>

using namespace std;

class Employee {
   public:
     Employee(string theName, float thePayRate);
     string name;
     float payRate;
};

Employee::Employee( string theName, float thePayRate) {
    name = theName;
    payRate = thePayRate;
}

class Boss : public Employee {
    public:
      Boss( string theName, float thePayRate, Employee *next );
      ~Boss();

      Employee *nextInChain;
};

Boss::Boss( string theName, float thePayRate, Employee *next ) : Employee(theName, thePayRate) {
    nextInChain = next;
}

Boss::~Boss() {
    delete nextInChain;
}


int main() {
    Employee *john = new Employee( "John", 10 );
    Boss *bozz = new Boss( "Bill", 50, john );
    bozz -> payRate = 45;
    delete bozz;
    john -> payRate = 12;
}
