#import "Fraction.h"

int main(int argc, char * argv[])
{
	@autoreleasepool {
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];

		Fraction *resultFraction;

		[aFraction setTo: 1 over: 4]; // set 1sr Fraction to 1/4
		[bFraction setTo: 1 over: 2]; // set 2nd Fraction to 1/2

		// add
		[aFraction print];
		NSLog(@"+");
		[bFraction print];
		NSLog(@"=");
		
		resultFraction = [aFraction add: bFraction];
		[resultFraction print];
		NSLog(@"\n\n");

		// subtract
		[aFraction print];
		NSLog(@"-");
		[bFraction print];
		NSLog(@"=");

		resultFraction = [aFraction subtract: bFraction];
		[resultFraction print];
		NSLog(@"\n\n");

		// multiply
		[aFraction print];
		NSLog(@"*");
		[bFraction print];
		NSLog(@"=");

		resultFraction = [aFraction multiply: bFraction];
		[resultFraction print];
		NSLog(@"\n\n");
		
		// divide
		[aFraction print];
		NSLog(@"/");
		[bFraction print];
		NSLog(@"=");

		resultFraction = [aFraction divide: bFraction];
		[resultFraction print];
		NSLog(@"\n\n");
	}

	return 0;
}
