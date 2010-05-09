//
//  NewAcronymViewController.m
//  AcronymManager
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright 2010 Two Guys, LLC. All rights reserved.
//

#import "NewAcronymViewController.h"
#import "Acronym.h"

@implementation NewAcronymViewController

@synthesize acronymTextField;
@synthesize meaningTextField;
@synthesize delegate;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	// Must set textfield delegate to files owner
	[textField resignFirstResponder];
	return YES;
}


- (IBAction)saveAcronym:(id)sender {
	NSLog(@"Saving");
	Acronym *acronym = [[Acronym alloc] init];
	[acronym setLetters:acronymTextField.text];
	[acronym setMeaning:meaningTextField.text];
	[delegate performSelector:@selector(addNewAcronym:) withObject:acronym];
	[acronym release];
	
	[self.parentViewController dismissModalViewControllerAnimated:YES];
}

- (IBAction)cancel:(id)sender {
	NSLog(@"Cancelled");
	[self.parentViewController dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
