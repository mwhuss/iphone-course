//
//  HouseAppDelegate.h
//  House
//
//  Created by Marshall Huss on 5/7/10.
//  Copyright MITRE Corporation 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HouseViewController;

@interface HouseAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HouseViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HouseViewController *viewController;

@end

