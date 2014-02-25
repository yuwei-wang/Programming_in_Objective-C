#import "Fraction.h"

int main(int argc, char *argv[])
{
	@autoreleasepool {
		Fraction *myFraction = [[Fraction alloc] init];
		
		// set fraction to 1/3 using the dot operator
		myFraction.numerator = 1;
		myFraction.denominator = 3;

		// display the fraction's numerator and denominator
		NSLog(@"The numerator is %i, and the denominator is %i", myFraction.numerator, myFraction.denominator);
	}

	return 0;
}
