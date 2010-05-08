//
//  Calculator.m
//  NumberCruncher
//
//  Created by Marshall Huss on 4/19/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

@synthesize numbers;

- (Calculator *)init {
	if ([super init]) {
		numbers = [[NSMutableArray alloc] init];
	}
	
	return self;
}


- (void)addNumber:(NSNumber *)number {
	[self.numbers addObject:number];
}

- (NSNumber *)sum {
		
	int sum = 0;
	
	for (NSNumber *num in numbers) {
		sum += [num intValue];
	}
	
	return [NSNumber numberWithInt:sum];
	
}

- (NSNumber *)average {
	
	NSNumber *sum = [self sum];
	int avg = [sum intValue] / [numbers count];
	
	return [NSNumber numberWithInt:avg];
}

- (NSNumber *)product {

	int product = 1;
	
	for (NSNumber *num in numbers) {
		product *= [num intValue];
	}
	
	return [NSNumber numberWithInt:product];
}

- (NSNumber *)smallest {
	
	int smallest = [[numbers objectAtIndex:0] intValue];
	
	for (NSNumber *num in numbers) {
		if (smallest > [num intValue]) {
			smallest = [num intValue];
		}
	}
	
	return [NSNumber numberWithInt:smallest];
}

- (NSNumber *)largest {
	
	NSNumber *largest = [numbers objectAtIndex:0];
	
	for (NSNumber *num in numbers) {
		if ([largest intValue] < [num intValue]) {
			largest = num;
		}
	}
	
	return largest;
}



@end
