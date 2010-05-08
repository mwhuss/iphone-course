//
//  Calculator.h
//  NumberCruncher
//
//  Created by Marshall Huss on 4/19/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject {

	NSMutableArray *numbers;
}

@property (nonatomic, retain) NSMutableArray *numbers;

- (void)addNumber:(NSNumber *)number;
- (NSNumber *)sum;
- (NSNumber *)average;
- (NSNumber *)product;
- (NSNumber *)smallest;
- (NSNumber *)largest;

@end
