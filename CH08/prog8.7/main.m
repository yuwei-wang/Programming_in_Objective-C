// Overriding Methods

#import <Foundation/Foundation.h>

// ClassA declaration and definition
@interface ClassA: NSObject
	{
		int x; // will be inherited by subclass
	}

	-(void) initVar;
	-(void) printVar;
@end

@implementation ClassA
	-(void) initVar
	{
		x = 100;
	}

	-(void) printVar
	{
		NSLog(@"x = %i", x);
	}
@end

// ClassB declaration and definition
@interface ClassB: ClassA
	-(void) initVar;
	//-(void) printVar;
@end

@implementation ClassB
	-(void) initVar	// added method
	{
		x = 200;
	}

//	-(void) printVar
//	{
//		NSLog(@"x = %i", x);
//	}
@end

int main(int argc, char *argv[])
{
	@autoreleasepool {
		ClassA *a = [[ClassA alloc] init];
		ClassB *b = [[ClassB alloc] init];

		[a initVar];	// uses Class method
		[a printVar];	// reveal value of x;

		[b initVar];	// use overriding ClassB method
		[b printVar];	// reveal value of x;
	}

	return 0;
}


