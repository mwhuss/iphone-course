#import <Foundation/Foundation.h>
#import "Calculator.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSLog(@"Number Cruncher!");
	
	Calculator *calc = [[Calculator alloc] init];
	
	[calc addNumber:[NSNumber numberWithInt:5]];
	[calc addNumber:[NSNumber numberWithInt:4]];
	[calc addNumber:[NSNumber numberWithInt:2]];
	
	// Numbers
	NSLog(@"Numbers: %@", [calc.numbers componentsJoinedByString:@", "]);
	
	// Sum
	NSNumber *sum = [calc sum];
	NSLog(@"Sum: %i", [sum intValue]);
	
	// Average
	NSNumber *average = [calc average];
	NSLog(@"Average: %i", [average intValue]);
	
	// Product
	NSNumber *product = [calc product];
	NSLog(@"Product: %i", [product intValue]);
	
	// Smallest
	NSNumber *smallest = [calc smallest];
	NSLog(@"Smallest: %i", [smallest intValue]);
	
	// Largest
	NSNumber *largest = [calc largest];
	NSLog(@"Largest: %i", [largest intValue]);
	
	[calc dealloc];
    [pool drain];
    return 0;
}
