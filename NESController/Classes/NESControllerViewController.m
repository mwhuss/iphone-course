//
//  NESControllerViewController.m
//  NESController
//
//  Created by Marshall Huss on 6/5/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import "NESControllerViewController.h"

@implementation NESControllerViewController

@synthesize aButton;
@synthesize bButton;
@synthesize startButton;
@synthesize selectButton;
@synthesize upButton;
@synthesize downButton;
@synthesize leftButton;
@synthesize rightButton;

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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self.view setBackgroundColor:[UIColor blackColor]];
	
	UILabel *nintendo = [[UILabel alloc] initWithFrame:CGRectMake(280, 60, 200, 50)];
	[nintendo setText:@"Pretendo"];
	[nintendo setFont:[UIFont fontWithName:@"Arial Rounded MT Bold" size:25.0]];
	[nintendo setTextColor:[UIColor redColor]];
	[nintendo setBackgroundColor:[UIColor blackColor]];
	
	[self.view addSubview:nintendo];
	
	self.aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[aButton setFrame:CGRectMake(350, 220, 50, 50)];
	[aButton setTitle:@"A" forState:UIControlStateNormal];
	[aButton addTarget:self action:@selector(actionButtonPressed:) forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:aButton];
	
	self.bButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[bButton setFrame:CGRectMake(420, 220, 50, 50)];
	[bButton setTitle:@"B" forState:UIControlStateNormal];
	[bButton addTarget:self action:@selector(actionButtonPressed:) forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:bButton];
	
	//self.selectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[selectButton setFrame:CGRectMake(170, 250, 50, 20)];
//	[self.view addSubview:selectButton];
//
//	self.startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[startButton setFrame:CGRectMake(240, 250, 50, 20)];
//	[self.view addSubview:startButton];
	
	self.downButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[downButton setFrame:CGRectMake(75, 250, 50, 50)];
	[self.view addSubview:downButton];
	
	self.upButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[upButton setFrame:CGRectMake(75, 150, 50, 50)];
	[self.view addSubview:upButton];
	
	self.leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[leftButton setFrame:CGRectMake(15, 200, 50, 50)];
	[self.view addSubview:leftButton];
	
	self.rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[rightButton setFrame:CGRectMake(135, 200, 50, 50)];
	[self.view addSubview:rightButton];
	
	UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(20, 60, 150, 20)];

	[self.view addSubview:slider];
	
	
}

- (void)actionButtonPressed:(id)sender {
	if (sender == self.aButton) {
		NSLog(@"A Button Pressed");
	} else {
		NSLog(@"B Button Pressed");

	}
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
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
