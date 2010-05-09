//
//  AcronymManagerAppDelegate.m
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import "AcronymManagerAppDelegate.h"
#import "AcronymTableViewController.h"

@implementation AcronymManagerAppDelegate

@synthesize window, acronymTableViewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	
    // Override point for customization after application launch
	UINavigationController *navController = [[UINavigationController alloc] init];
	
	acronymTableViewController = [[AcronymTableViewController alloc] init];
	[acronymTableViewController setAcronyms:[self loadAcronyms]];
	
	[navController pushViewController:acronymTableViewController animated:NO];
	[acronymTableViewController release];
	
	[window addSubview:navController.view];
    [window makeKeyAndVisible];
	
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
	NSLog(@"App Terminating");
	NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
	NSLog(@"Saving %i acronyms", [acronymTableViewController.acronyms count]);
	//[prefs setObject:acronymTableViewController.acronyms forKey:@"acronyms"];
	NSData* myData = [NSKeyedArchiver archivedDataWithRootObject:acronymTableViewController.acronyms];
	[prefs setObject:myData forKey:@"acronyms"];

}

- (NSMutableArray *)loadAcronyms {
	//return [[NSMutableArray alloc] init];
	NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
	NSData *myData = [prefs objectForKey:@"acronyms"];
	NSMutableArray* acronyms = [NSKeyedUnarchiver unarchiveObjectWithData:myData];
	if (acronyms) {
		NSLog(@"Loading Acronyms - %i", [acronyms count]);
		return acronyms;
	} else {
		NSLog(@"Creating new store");
		return [[NSMutableArray alloc] init];
	}
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
