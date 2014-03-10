#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, char *argv[])
{
	@autoreleasepool {
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint *myPoint = [[XYPoint alloc] init];

		[myPoint setX: 100 andY: 200];
		[myRect setWidth:5 andHeight: 8];
		myRect.origin = myPoint;

		NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);

		[myPoint setX: 50 andY: 50];
		NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
	}

	return 0;
}
