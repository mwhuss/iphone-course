//
//  SliderTestAppDelegate.h
//  SliderTest
//
//  Created by Marshall Huss on 6/9/09.
//  Copyright MITRE Corporation 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SliderTestViewController;

@interface SliderTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SliderTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SliderTestViewController *viewController;

@end

