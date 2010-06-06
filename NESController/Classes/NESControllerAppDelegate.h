//
//  NESControllerAppDelegate.h
//  NESController
//
//  Created by Marshall Huss on 6/5/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NESControllerViewController;

@interface NESControllerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NESControllerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NESControllerViewController *viewController;

@end

