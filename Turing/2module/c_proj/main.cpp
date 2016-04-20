#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main()
{

  vector<int> numVec {1, 2, 3, 4, 5 };

  numVec.push_back(1);

  for (vector<int>::iterator i = numVec.begin(); i != numVec.end(); ++i)
  {
    cout << *i << endl;
  }

  int numArray[5] = {1, 2, 3, 4, 5};

  for (int i = 0; i < 5; ++i)
  {
    cout << numArray[i] << endl;
  }

  int five, four, three, two, one;

  five = 5;
  four = 4;
  three = 3;
  two = 2;
  one = 1;


  cout << "This is going out " << five << " this is...... " << four << endl;

  return 0;
}
