//
// Fraction.h
// FractionTest
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction: NSObject
@property int numerator, denominator;
-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;
-(double) convertToNum;
@end
