//
//  AcronymDetailViewController.h
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AcronymDetailViewController : UIViewController {

	UITextView *meaning;
	
}

@property (nonatomic, retain) IBOutlet UITextView *meaning;

@end
