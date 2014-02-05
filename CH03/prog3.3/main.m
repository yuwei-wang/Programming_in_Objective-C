// Program to work with fractions - cont'd

#import <Foundation/Foundation.h>

// ---- @interface section ----
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
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

// ---- program section ----
int main(int argc, char *argv[])
{
	@autoreleasepool {
		Fraction *frac1 = [[Fraction alloc] init];
		Fraction *frac2 = [[Fraction alloc] init];

		// set 1st fraction to 2/3
		[frac1 setNumerator: 2];
		[frac1 setDenominator: 3];

		// set 2nd fraction to 3/7
		[frac2 setNumerator: 3];
		[frac2 setDenominator: 7];

		// display the fraction
		NSLog(@"First fraction is:");
		[frac1 print];

		NSLog(@"Second fraction is:");
		[frac2 print];
	}
	return 0;
}
@end
