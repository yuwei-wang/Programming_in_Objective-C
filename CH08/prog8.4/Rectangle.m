#import "Retangle.h"

@implementation Rectangle
	{
		XYPoint *origin;
	}

	@synthesize width, height;

	-(void) setWidth: (int) w andHeight: (int) h
	{
		width = w;
		height = h;
	}
@end
