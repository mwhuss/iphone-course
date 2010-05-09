//
//  Acronym.m
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import "Acronym.h"


@implementation Acronym

@synthesize letters, meaning;


- (void)encodeWithCoder:(NSCoder *) encoder
{
	[encoder encodeObject: letters];
	[encoder encodeObject: meaning];
}

- (id)initWithCoder:(NSCoder *) decoder
{
	letters = [[decoder decodeObject] retain];
	meaning = [[decoder decodeObject] retain];
	return self;
}

- (NSComparisonResult)compare:(Acronym *)otherObj {
	return [self.letters compare:otherObj.letters];
}


@end
