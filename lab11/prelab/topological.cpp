#include <iostream>
#include <algorithm>
#include <map>
#include <set>
#include <vector>
#include <stdio.h>
#include <string.h>

using namespace std;

struct edge {
    string from;
    string to;
};


set<string> allNodeNames;  // all of the nodes by name
vector<string> visited;     // visited already
vector<string> sorted;      // resulting list

// create map to hold all nodes and their potential destinations
typedef pair <string, vector<string> > path;
map <string, vector<string> > graph;

// recursive procedure to sort the nodes
void visit(string s)
{
    vector<string> temp, temp2;
    if (find(visited.begin(), visited.end(), s) == visited.end())
    {
        visited.push_back(s);
        set<string>::iterator itr = allNodeNames.begin();
        while (itr != allNodeNames.end())
        {
            temp = graph.find(*itr)->second;
            if ( find(temp.begin(), temp.end(), s) != temp.end())
                visit(*itr);
            itr++;
        }
        sorted.push_back(s);
    }
}


int main(int argc, char **argv) {
    if ( argc != 2 )
    {
        cout << "Please supply input file name as the one and only param" << endl;
        return 1;
    }

    FILE *fp = fopen(argv[1], "r");

    if ( !fp )
    {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        return 1;
    }

    // create map of edge pointers to represent input file
    vector<struct edge *> edges;

    char *first, *second;
    char str[100];
    struct edge *tmp;
    vector<string> vec;
    set<string> notStartNodes;
    while ( ( fgets(str, 100, fp ) ) )
    {
        first = strtok( str, " \n");
        second = strtok( NULL, " \n");
        if (*first == '0')
            break;
        map <string, vector<string> >::iterator itr = graph.find((string)first);
        if ( itr == graph.end() )
        {
            vector<string> vect;
            vect.push_back((string)second);
            graph.insert( path ((string)first, vect));
        }
        else
        {
            vec = graph[(string)first];
            graph.erase(graph.find((string)first));
            vec.push_back((string)second);
            graph.insert( path ((string)first, vec));
        }
    

        allNodeNames.insert(first);
        allNodeNames.insert(second);
        notStartNodes.insert(second);
    }

    
    
    string s;



    // figure out startnodes
    vector<string> startnodes;
    vector<string> go;
    set<string>::iterator iter = allNodeNames.begin();
    while ( iter != allNodeNames.end() )
    {
        // TODO fix iteration
        s = *iter;
        if ( notStartNodes.find(s) == notStartNodes.end())
        {           // if node is a start node
            startnodes.push_back(s);
        }
        if ( graph.find(s) == graph.end() )
            go.push_back(s);
        iter++;
    }


    vector<string>::iterator itr = go.begin();
    while (itr != go.end())
    {
        visit(*itr);
        itr++;
    }

    itr = sorted.begin();
    while (itr != sorted.end())
    {
        cout << *itr << " ";
        itr++;
    }
        
    cout << endl;

    unsigned int len = edges.size();
    for (int i = 0; i < len; i++)
    {
        delete edges[i];
    }
    
    


}
