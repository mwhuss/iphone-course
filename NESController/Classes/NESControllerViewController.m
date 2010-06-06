//
//  NESControllerViewController.m
//  NESController
//
//  Created by Marshall Huss on 6/5/10.
//  Copyright Two Guys, LLC. 2010. All rights reserved.
//

#import "NESControllerViewController.h"

@implementation NESControllerViewController



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
	[nintendo setText:@"Nintendo"];
	[nintendo setFont:[UIFont fontWithName:@"Arial Rounded MT Bold" size:25.0]];
	[nintendo setTextColor:[UIColor redColor]];
	[nintendo setBackgroundColor:[UIColor blackColor]];
	
	[self.view addSubview:nintendo];
	
	UIButton *aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[aButton setFrame:CGRectMake(300, 220, 50, 50)];
	[aButton setTitle:@"A" forState:UIControlStateNormal];
	[aButton addTarget:self action:@selector(aButtonPressed:) forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:aButton];
	
	UIButton *bButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[bButton setFrame:CGRectMake(370, 220, 50, 50)];
	[bButton setTitle:@"B" forState:UIControlStateNormal];
	[self.view addSubview:bButton];
	
	//UIButton *selectButton = [[UIButton alloc] initWithFrame:CGRectMake(170, 280, 50, 10)];
	//UIButton *selectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	//[selectButton setFrame:CGRectMake(170, 280, 50, 10)];
	//[selectButton setBackgroundColor:[UIColor grayColor]];
	
	//[self.view addSubview:selectButton];
}

- (void)aButtonPressed:(id)sender {
	NSLog(@"A Button Pressed");
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
