//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController {

	UIButton *button0;
	UIButton *button1;
	UIButton *button2;
	UIButton *button3;
	UIButton *button4;
	UIButton *button5;
	UIButton *button6;
	UIButton *button7;
	UIButton *button8;
	UIButton *button9;
	UIButton *plusButton;
	UIButton *equalsButton;
	
	UILabel *numberLabel;
	
}

@property (nonatomic, retain) IBOutlet UIButton *button0;
@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, retain) IBOutlet UIButton *button3;
@property (nonatomic, retain) IBOutlet UIButton *button4;
@property (nonatomic, retain) IBOutlet UIButton *button5;
@property (nonatomic, retain) IBOutlet UIButton *button6;
@property (nonatomic, retain) IBOutlet UIButton *button7;
@property (nonatomic, retain) IBOutlet UIButton *button8;
@property (nonatomic, retain) IBOutlet UIButton *button9;
@property (nonatomic, retain) IBOutlet UILabel *numberLabel;

- (IBAction)button0pressed;
- (IBAction)button1pressed;
- (IBAction)button2pressed;
- (IBAction)button3pressed;
- (IBAction)button4pressed;
- (IBAction)button5pressed;
- (IBAction)button6pressed;
- (IBAction)button7pressed;
- (IBAction)button8pressed;
- (IBAction)button9pressed;

@end

