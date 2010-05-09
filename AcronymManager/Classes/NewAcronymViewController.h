//
//  NewAcronymViewController.h
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewAcronymViewController : UIViewController <UITextFieldDelegate> {

	UITextField *acronymTextField;
	UITextField *meaningTextField;
	
	id delegate;
}

@property (nonatomic, retain) IBOutlet UITextField *acronymTextField;
@property (nonatomic, retain) IBOutlet UITextField *meaningTextField;
@property (nonatomic, retain) id delegate;

- (IBAction)saveAcronym:(id)sender;
- (IBAction)cancel:(id)sender;

@end
