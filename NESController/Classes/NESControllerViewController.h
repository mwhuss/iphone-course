//
//  NESControllerViewController.h
//  NESController
//
//  Created by Marshall Huss on 6/5/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NESControllerViewController : UIViewController {

	UIButton *aButton;
	UIButton *bButton;
	UIButton *startButton;
	UIButton *selectButton;
	UIButton *upButton;
	UIButton *downButton;
	UIButton *leftButton;
	UIButton *rightButton;
	
}

@property (nonatomic, retain) UIButton *aButton;
@property (nonatomic, retain) UIButton *bButton;
@property (nonatomic, retain) UIButton *startButton;
@property (nonatomic, retain) UIButton *selectButton;
@property (nonatomic, retain) UIButton *upButton;
@property (nonatomic, retain) UIButton *downButton;
@property (nonatomic, retain) UIButton *leftButton;
@property (nonatomic, retain) UIButton *rightButton;

@end

