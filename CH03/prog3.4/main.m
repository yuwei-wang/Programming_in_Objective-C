// Simple program to work with fractions

#import <Foundation/Foundation.h>

// ---- @interface section ----
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
@end

// ---- @implementation section ----
@implementation Fraction
{
	int numerator;
	int denominator;
}

-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d
{
	denominator = d;
}

-(int) numerator
{
	return numerator;
}

-(int) denominator
{
	return denominator;
}
@end

// ---- program section ----
int main(int argv, char *argc[])
{
	@autoreleasepool {
		Fraction *myFraction = [[Fraction alloc] init];

		// Set fraction to 1/3
		[myFraction setNumerator: 1];
		[myFraction setDenominator: 3];

		// Displat the fraction using our two new methods
		NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
	}
	return 0;
}
