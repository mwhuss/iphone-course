//
//  HouseView.m
//  House
//
//  Created by Marshall Huss on 5/7/10.
//  Copyright 2010 MITRE Corporation. All rights reserved.
//

#import "HouseView.h"


@implementation HouseView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
	
	// Sky
	CGRect bounds = [self bounds];
	[[UIColor blueColor] set]; 
	UIRectFill (bounds);
	
	// Grass
	CGRect grass = CGRectMake(0, 400, 320, 80);
	[[UIColor greenColor] set];
	UIRectFill(grass);
	
	// House Building
	CGRect house = CGRectMake (100, 300, 100, 100); 
	[[UIColor brownColor] set]; 
	UIRectFill (house);
	[[UIColor blackColor] set]; 
	UIRectFrame (house);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// House Roof
	CGContextBeginPath (context); 
	CGContextMoveToPoint (context, 150, 250); 
	CGContextAddLineToPoint (context, 200, 300); 
	CGContextAddLineToPoint (context, 100, 300); 
	CGContextClosePath (context);
	[[UIColor redColor] setFill]; 
	[[UIColor blackColor] setStroke]; 
	CGContextDrawPath (context, kCGPathFillStroke);
	
	
	// Door
	CGRect door = CGRectMake (115, 360, 30, 40); 
	[[UIColor blackColor] set]; 
	UIRectFill (door);
	
	
	// Sun
	CGContextBeginPath(context);
	[[UIColor yellowColor] setFill];
	CGContextFillEllipseInRect(context, CGRectMake(50, 75, 100, 100));
	
	// Cloud
	CGContextBeginPath(context);
	[[UIColor whiteColor] setFill];
	CGContextFillEllipseInRect(context, CGRectMake(200, 125, 50, 50));
	CGContextFillEllipseInRect(context, CGRectMake(235, 125, 50, 50));
	CGContextFillEllipseInRect(context, CGRectMake(200, 150, 33, 33));
	CGContextFillEllipseInRect(context, CGRectMake(225, 150, 33, 33));
	CGContextFillEllipseInRect(context, CGRectMake(250, 150, 33, 33));
	
}


- (void)dealloc {
    [super dealloc];
}


@end
