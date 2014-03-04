#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
	if (denominator != 0)
	{
		return (double) numerator / denominator;
	} else {
		return NAN;
	}
}

-(void) setTo: (int) n over: (int) d
{
	numerator = n;
	denominator = d;
}

// add a Fraction to the receiver
-(void) add: (Fraction *) f
{
	// To add two Fractions:
	// a/b + c/d = ((a * d) + (C * b)) / b * d
	numerator = (numerator * f.denominator) + (f.numerator * denominator);
	denominator = denominator * f.denominator;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int temp;

	while(v != 0)
	{
		temp = u % v;
		u = v;
		v = temp;	
	}
	
	numerator /= u;
	denominator /= u;
}
@end
