/*
 * Adarsh Solanki as5nr
 * 4/23/12
 * CS 2150 In-Lab: 11
 * traveling.cpp
 */

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>

using namespace std;

#include "middleearth.h"

float computeDistance (MiddleEarth &me, string start, vector<string> dests);
void printRoute (string start, vector<string> dests);

/**
 *  @brief Brute-force implementation of traveling salesman algorithm
 *  Creates an instance of Middle-Earth and finds the shortest cycle through all
 *  cities using five command-line params
 */

int main (int argc, char **argv) {
  // check the number of parameters
  if ( argc != 6 ) {
    cout << "Usage: " << argv[0] << " <world_height> <world_width> "
	 << "<num_cities> <random_seed> <cities_to_visit>" << endl;
    exit(0);
  }
  // we'll assume the parameters are all well-formed
  int width, height, num_cities, rand_seed, cities_to_visit;
  sscanf (argv[1], "%d", &width);
  sscanf (argv[2], "%d", &height);
  sscanf (argv[3], "%d", &num_cities);
  sscanf (argv[4], "%d", &rand_seed);
  sscanf (argv[5], "%d", &cities_to_visit);

  // Create the world, and select your itinerary
  MiddleEarth me(width, height, num_cities, rand_seed);
  vector<string> dests = me.getItinerary(cities_to_visit);

  // YOUR CODE HERE
    string start = dests.at(0);

    cout << endl << "Middle-Earth is " << width << "x" << height << endl;
    cout << "With " << num_cities << " cities, and a seed of " << rand_seed << endl;
    cout << "Traveling from " << start << " through " << cities_to_visit << " cities..." << endl;

    float min = 999999.9f;
    int num = 1;
    vector<string> shortestPath(dests.size());
    sort( dests.begin() + 1, dests.end() );
    if ( dests.size() < 3 )
    {
        min = computeDistance( me, start, dests );
        shortestPath = dests;
    }
    else
    {
        while ( next_permutation( dests.begin() + 1, dests.end() ) )
        {
            float currDist = computeDistance( me, start, dests );
            //cout << "Permutation " << num++ << ": " << currDist;
            if ( currDist < min )
            {
                min = currDist;
                shortestPath = dests;
                //cout << endl << "new min!";
            }
            //cout << endl << endl;
        }
        //cout << "permutations complete!" << endl;
    }
    //
    //

    cout << endl << endl << endl << "Shortest distance: " << min << endl;

    printRoute( start, shortestPath );
    

  return 0;
}

// This method will compute the full distance of the cycle that starts
// at the 'start' parmater, goes to each of the cities in the dests
// vector IN ORDER, and ends back at the 'start' parameter.

/**
 *  @brief computes distance from a start point through each city in vector
 *
 *  Given an instance of Middle-Earth, a starting city, and a vector of cities
 *  to travel to (in order), the function returns a float distance/cost of 
 *  travel on a cyclic path that starts and ends at the starting city
 *  @param me instance of Middle-Earth
 *  @param start start/end city
 *  @param dests vector of city names to which to travel
 */

float computeDistance (MiddleEarth &me, string start, vector<string> dests) {
  // YOUR CODE HERE
  //


    vector<string> path = dests;
    path.resize( dests.size() + 1 );    // paths will hold start -> the rest -> start/end
                                        // makes iteration easier

    int index = 0; 
    vector<string>::iterator startIter = find( dests.begin(), dests.end(), start );
    vector<string>::iterator iter = startIter;
    if ( iter != dests.begin() )
    {   // paths must be ordered

        while ( iter != dests.end() )
        {
            path.at(index++) = (*iter++);
        }
        iter = dests.begin();
        while ( iter != startIter )
        {
            path.at(index++) = (*iter++);
        }
    }
    path.at(path.size() - 1) = path.at(0);
    
    float val = 0.0f;
    float tmp;
    index = 0;
    //cout << me.getDistance( path.at(0), path.at(1) ) << endl << endl;
    while ( index < path.size() - 1 )
    {
        //val += me.getDistance( path.at(index), path.at(++index) );
        //cout << "Distance between " << path.at(index) << " and " << path.at(index+1) << ": ";
        tmp = me.getDistance( path.at(index), path.at(index + 1) );
        //cout << tmp << endl;
        val += tmp;
        index++;
    }

    //cout << "Total distance: " << val << endl;

    return val;

}

// This method will print the entire route, starting and ending at the
// 'start' parameter.  The output should be of the form:
// Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor

/**
 * @brief prints route of cities
 * Given a starting string and a vector of city-names, prints to console 
 * the itinerary for travel starting and ending at the same city
 * @param start city to start/end
 * @param dests cities to which to travel
 */

void printRoute (string start, vector<string> dests) {
  // YOUR CODE HERE

  
    vector<string>::iterator startIter = find( dests.begin(), dests.end(), start );
    vector<string>::iterator itr  = startIter;
    while ( itr != dests.end() )
    {

        cout << *itr << " -> ";
        itr++;
    }
    itr = dests.begin();
    while ( itr != startIter  )
    {
        cout << *itr << " -> ";
        itr++;
    }
    cout << *(itr) << endl;
}
