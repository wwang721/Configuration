#include <iostream>
#include <unistd.h>

using namespace std;

int main(int argc, char * argv[])
{
	for(int i = 0; i < 10; i++)
	{
		cout << i << endl;
		sleep(60);
	}

	return 0;
}
