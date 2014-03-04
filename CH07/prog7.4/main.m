#import "Fraction.h"

int main(int argc, char * argv[])
{
	@autoreleasepool {
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];

		[aFraction setTo: 1 over: 4]; // set 1sr Fraction to 1/4
		[bFraction setTo: 1 over: 2]; // set 2nd Fraction to 1/2

		[aFraction print];
		NSLog(@"+");
		[bFraction print];
		NSLog(@"=");

		[aFraction add: bFraction];
		NSLog(@"Before reduce Fraction: ");
		[aFraction print];

		// reduce the result of the addition and preint the result
		[aFraction reduce];
		NSLog(@"After reduce Fraction:");
		[aFraction print];
	}

	return 0;
}
