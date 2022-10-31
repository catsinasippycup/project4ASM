#include <iostream>
using namespace std;

extern "C" {

	int largest(int*, int); // finds the largest
	int smallest(int*, int); // finds the smallest 
	int average(int*, int); // adds the array then divides the amount

	int sum(int, int); // Test - does divide, xor then div 2nd number 
}

int main() {

	const int SIZE = 7;
	int arr[SIZE] = {10,20,30,40,50,60,70};

	int valLargest = largest(arr, SIZE);
	int valSmallest = smallest(arr, SIZE);
	int valOfAvg = average(arr, SIZE);

	int valOfSum1 = sum(10, 2); // divides tester 

	cout << "\n The function largest returned: " << valLargest << endl;
	cout << "\n The function smallest returned: " << valSmallest << endl;
	cout << "\n The function simple returned: " << valOfAvg << endl;

	cout << "\n The function average returned: " << valOfSum1 << endl;


	return 0;

}