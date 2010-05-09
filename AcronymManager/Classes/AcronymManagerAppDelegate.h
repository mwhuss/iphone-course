//
//  AcronymManagerAppDelegate.h
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AcronymTableViewController.h"

@interface AcronymManagerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	AcronymTableViewController *acronymTableViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) AcronymTableViewController *acronymTableViewController;


- (NSMutableArray *)loadAcronyms;


@end

