//
//  AcronymTableViewController.h
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Acronym.h"

@interface AcronymTableViewController : UITableViewController {

	NSMutableArray *acronyms;
}

@property (nonatomic, retain) NSMutableArray *acronyms;

- (void)addNewAcronym:(Acronym *)acronym;

@end
