// This code was adapted from http://www.easycalculation.com/prime-number.php (specifically http://www.easycalculation.com/js/primenumber.js)

#include <iostream>
#include <math.h>

using namespace std;

bool checkforlargeprime (int num);

bool checkprime (int nn) {
  if (nn > 100) {
    return checkforlargeprime(nn);
  } else {
    int k=2;
    while (k < nn) {
      int sd = nn%k;
      if ( sd == 0) {
        return false;
      }
      k++;
    }
  }
  return true;
}

int getNextPrimeNumber (int num) {
  int nam = num+1;
  bool das = true;
  while ( das == true ) {
    if (checkprime(nam))
      das = false;
    else
      nam = nam+1;
  }
  return nam;
}

int getPrevPrimeNumber (int num) {
  int nam = num-1;
  int das = true;
  while ( das == true ) {
    if (checkprime(nam))
      das = false;
    else
      nam = nam-1;
  }
  if (nam < 2)
    nam=2;
  return nam;
}

bool checkforlargeprime (int num) {
  if (num > 100) {
    int sss = ((int)(sqrt((double)num)))+1;
    int pn = 2;

    while (pn < sss) {
      if (num%pn == 0) {
        return false;
      }
      pn = getNextPrimeNumber(pn);
    }
    return true;
  } else {
    return false;
  }
}

int main() {
  int x;
  cout << "Enter number: ";
  cin >> x;
  cout << x << " is prime: " << checkprime(x) << endl;
  cout << "next higest prime: " << getNextPrimeNumber(x) << endl;
  cout << "next lowest prime: " << getPrevPrimeNumber(x) << endl;
}
