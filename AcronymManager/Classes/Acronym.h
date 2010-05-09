//
//  Acronym.h
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSCoder.h>


@interface Acronym : NSObject <NSCoding> {

	NSString *letters;
	NSString *meaning;
}

@property (nonatomic, retain) NSString *letters;
@property (nonatomic, retain) NSString *meaning;

@end
