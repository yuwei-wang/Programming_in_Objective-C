#include "Rectangle.h"

@implementation Rectangle
	@synthesize width, height;

	-(void) setWidth: (int) w andHeight: (int) h
	{
		width = w;
		height = h;	
	}

	-(int) area
	{
		return width * height;	
	}

	-(int) perimeter
	{
		return (width + height) * 2;
	}
@end
