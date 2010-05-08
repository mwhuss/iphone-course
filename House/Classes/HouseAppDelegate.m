//
//  HouseAppDelegate.m
//  House
//
//  Created by Marshall Huss on 5/7/10.
//  Copyright MITRE Corporation 2010. All rights reserved.
//

#import "HouseAppDelegate.h"
#import "HouseViewController.h"

@implementation HouseAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
