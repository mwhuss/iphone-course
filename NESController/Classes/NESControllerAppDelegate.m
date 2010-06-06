//
//  NESControllerAppDelegate.m
//  NESController
//
//  Created by Marshall Huss on 6/5/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import "NESControllerAppDelegate.h"
#import "NESControllerViewController.h"

@implementation NESControllerAppDelegate

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
