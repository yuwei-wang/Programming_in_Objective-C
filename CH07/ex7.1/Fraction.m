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
-(Fraction *) add: (Fraction *) f
{
	// To add two Fractions:
	// a/b + c/d = ((a * d) + (C * b)) / b * d

	// result will store the result of the addition
	Fraction *result = [[Fraction alloc] init];

	result.numerator = (numerator * f.denominator) + (f.numerator * denominator);
	result.denominator = denominator * f.denominator;

	[result reduce];

	return result;
}

// subtract a Fraction to the receiver
-(Fraction *) subtract: (Fraction *) f
{
	// To subtract two Fractions:
	// a/b - c/d = ((a * d) - (c * b)) / b * d

	// result will store the result of the addition
	Fraction *result = [[Fraction alloc] init];
	result.numerator = (numerator * f.denominator) - (f.numerator * denominator);
	result.denominator = denominator * f.denominator;

	[result reduce];
	
	return result;
}

// multiply a Fraction to the receiver
-(Fraction *) multiply: (Fraction *) f
{
	// To multiply two Fractions:
	// a/b * c/d = (a * C) / (b * d)

	// result will store the result of the multiply
	Fraction *result = [[Fraction alloc] init];
	result.numerator = numerator * f.numerator;
	result.denominator = denominator * f.denominator;

	[result reduce];

	return result; 
}

// divide a Fraction to the receiver
-(Fraction *) divide: (Fraction *) f
{
	// To divide two Fraction
	// (a/b) / (c/d) = a/b * d/c = (a * d) / (b * c)

	// result will storethe result of the divide
	Fraction *result = [[Fraction alloc] init];

	result.numerator = numerator * f.denominator;
	result.denominator = denominator * f.numerator;

	[result reduce];

	return result;
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
