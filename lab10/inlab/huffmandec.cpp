// Adarsh SOlanki as5nr
// 4/17/12
// CS 2150 in-lab 10
//

#include <iostream>
#include <fstream>
#include <stdlib.h>
#include "huffmanTree.h"

using namespace std;

void parse( huffmanTree *tree, string target ) {
    
    cout << "---------------------------------------" << endl;
    huffmanNode *curr;
    while ( target.length() > 0 )
    {
        curr = tree->root;
        while (curr->left || curr->right)
        {
           if ( target[0] == '0' )
           {
               curr = curr->left;
               target = target.substr( 1, target.length() - 1 );
           }
           else if ( target[0] == '1' )
           {
               curr = curr->right;
               target = target.substr( 1, target.length() - 1 );
           }
        }

        cout << curr->elem;

    }
    cout << endl;
}

// main(): we want to use parameters
int main (int argc, char **argv) {

  // verify the correct number of parameters
  if ( argc != 2 ) {
    cout << "Must supply the input file name as the only parameter" << endl;
    exit(1);
  }

  // attempt to open the supplied file; must be opened in binary
  // mode, as otherwise whitespace is discarded
  ifstream file(argv[1], ifstream::binary);

  // report any problems opening the file and then exit
  if ( !file.is_open() ) {
    cout << "Unable to open file '" << argv[1] << "'." << endl;
    exit(2);
  }

  // read in the first section of the file: the prefix codes
  char buffer[256];

  huffmanTree *parsetree = new huffmanTree();
  parsetree->root = new huffmanNode( NULL, NULL, NULL );

  while ( true ) {
    // read in first character on line
    char first = file.get();
    // catch DOS and UNIX newlines
    if ( (first == '\n') || (first == '\r') )
      continue;
    // read in second character on line
    char second = file.get();
    // did we encounter the separator?
    if ( (first == '-') && (second == '-') ) {
      // read in the rest of the line
      file.getline(buffer, 255, '\n');
      break;
    }
    // read in the prefix code
    file.getline(buffer, 255, '\n');
    // do something with the prefix code
    cout << "character '" << first << "' has prefix code '" 
	 << buffer << "'" << endl;


    string buffstring = string(buffer);
    huffmanNode *currNode = parsetree->root;

    //cout << "buffstring: " << buffstring << endl;

    while ( buffstring.length() > 1 )
    {
        if ( buffstring[0] == '0' )
        {
            if (!(currNode->left))
            {
                currNode->left = new huffmanNode( NULL, NULL, NULL );
            }
            currNode = currNode->left;
            buffstring = buffstring.substr( 1, buffstring.length() - 1 );
        }
        else if ( buffstring[0] == '1' )
        {
            if (!(currNode->right))
            {
                currNode->right = new huffmanNode( NULL, NULL, NULL );
            }
            currNode = currNode->right;
            buffstring = buffstring.substr( 1, buffstring.length() - 1 );
        }
       

    }

    if ( buffstring[0] == '0' )
    {
        currNode->left = new huffmanNode( first, NULL, NULL );
    }
    else if ( buffstring[0] == '1' )
    {
        currNode->right = new huffmanNode( first, NULL, NULL );
    }

    

  }

  // read in the second section of the file: the encoded message
  char bit;
  string bits = "";
  while ( (bit = file.get()) != '-' ) {
    if ( (bit != '0') && (bit != '1') )
      continue;
    // do something with the bit read in
//    cout << "read in bit '" << bit << "'" << endl;
    bits += bit;
    
  }
//  cout <<  "time to traverse tree with: " << bits << endl;

  parse (parsetree, bits);

  // close the file before exiting
  file.close();
}
