// Program to determine if a number is even or odd

#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	@autoreleasepool {
		int number_to_test, remainder;
		
		NSLog(@"Enter your number to be test: ");
		scanf("%i", &number_to_test);

		remainder = number_to_test % 2;

		if(remainder == 0)
		{
			NSLog(@"The number is even.");
		}

		if(remainder != 0)
		{
			NSLog(@"The number is odd");
		}
	}
	return 0;
}
