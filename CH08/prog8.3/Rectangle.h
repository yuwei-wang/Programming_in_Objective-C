#import <Foundation/Foundation.h>
//#include <Foundation/Foundation.h>

@interface Rectangle : NSObject
	@property int width, height;
	
	-(void) setWidth: (int) w andHeight:(int) h;
	-(int) area;
	-(int) perimeter;
@end
