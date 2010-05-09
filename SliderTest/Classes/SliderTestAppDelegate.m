//
//  SliderTestAppDelegate.m
//  SliderTest
//
//  Created by Marshall Huss on 6/9/09.
//  Copyright MITRE Corporation 2009. All rights reserved.
//

#import "SliderTestAppDelegate.h"
#import "SliderTestViewController.h"

@implementation SliderTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
