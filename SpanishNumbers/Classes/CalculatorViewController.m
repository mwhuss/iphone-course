//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Marshall Huss on 5/8/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize button0;
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;
@synthesize button7;
@synthesize button8;
@synthesize button9;
@synthesize numberLabel;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
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

- (IBAction)button0pressed {
	NSLog(@"button 0");
	[self.numberLabel setText:@"cero"];
}

- (IBAction)button1pressed {
	[self.numberLabel setText:@"uno"];
}

- (IBAction)button2pressed {
	[self.numberLabel setText:@"dos"];
}

- (IBAction)button3pressed {
	[self.numberLabel setText:@"tres"];
}

- (IBAction)button4pressed {
	[self.numberLabel setText:@"cuatro"];
}

- (IBAction)button5pressed {
	[self.numberLabel setText:@"cinco"];
}

- (IBAction)button6pressed {
	[self.numberLabel setText:@"seis"];
}

- (IBAction)button7pressed {
	[self.numberLabel setText:@"sieta"];
}

- (IBAction)button8pressed {
	[self.numberLabel setText:@"ocho"];
}

- (IBAction)button9pressed {
	[self.numberLabel setText:@"nueve"];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
