#import "Fraction.h"

int main(int argc, char *argv[])
{
	@autoreleasepool {
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];

		// Set two fractions to 1/4 and 1/2 and add them together
		[aFraction setTo: 1 over: 4];
		[bFraction setTo: 1 over: 2];

		// Print the result
		[aFraction print];
		NSLog(@"+");
		[bFraction print];
		NSLog(@"=");

		[aFraction add: bFraction];
		[aFraction print];
	}

	return 0;
}
