// Implement a Caculator class

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
// arithemetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divid: (double) value;
@end

@implementation Calculator
{
	double accumulator;
}

-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator = 0;
}

-(double) accumulator
{
	return accumulator;
}

-(void) add: (double) value
{
	accumulator += value;
}

-(void) subtract: (double) value
{
	accumulator -= value;
}

-(void) multiply: (double) value
{
	accumulator *= value;
}

-(void) divid: (double) value;
{
	accumulator /= value;
}
@end

int main(int argc, char *argv[])
{
	@autoreleasepool{
		Calculator *deskCalc = [[Calculator alloc] init];

		[deskCalc setAccumulator: 100.0];
		[deskCalc add: 200.];
		[deskCalc divid: 15.0];
		[deskCalc subtract: 10.0];
		[deskCalc multiply: 5];

		NSLog(@"The result is %g", [deskCalc accumulator]);
		NSLog(@"The result is %f", [deskCalc accumulator]);
	}
	return 0;
}
