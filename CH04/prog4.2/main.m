// Illustrate the use of various arithmetic operators

#import <Foundation/foundation.h>
int main(int argv, char *argc[])
{
	@autoreleasepool {
		int a = 100;
		int b = 2;
		int c = 25;
		int d = 4;
		int result;
		NSLog(@"[a, b, c, d] = [%i, %i, %i, %i]", a, b, c ,d);

		result = a - b;	// subtraction
		NSLog(@"a - b = %i", result);

		result = b * c;	// multiplication
		NSLog(@"b * c = %i", result);

		result = a / c;	// division
		NSLog(@"a / c = %i", result);

		result = a + b * c;	// precedence
		NSLog(@"a + b * c = %i", result);

		NSLog(@"a * b + c * d = %i", a * b + c * d);
	}
	return 0;
}
