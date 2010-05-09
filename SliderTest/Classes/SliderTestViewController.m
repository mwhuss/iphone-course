//
//  SliderTestViewController.m
//  SliderTest
//
//  Created by Marshall Huss on 6/9/09.
//  Copyright MITRE Corporation 2009. All rights reserved.
//

#import "SliderTestViewController.h"

@implementation SliderTestViewController

//@synthesize slider;
@synthesize blueSlider;
@synthesize redSlider;
@synthesize greenSlider;
@synthesize label;
@synthesize nav;

-(IBAction)updateLabel:(id)sender {
	CGFloat red = [redSlider value];
	CGFloat green = [greenSlider value];
	CGFloat blue = [blueSlider value];

	[label setText:[NSString stringWithFormat:@"%.0f %.0f %.0f", [self toDecimalFromSlider:red], [self toDecimalFromSlider:green], [self toDecimalFromSlider:blue]]];
	[self.view setBackgroundColor:[UIColor colorWithRed:red green:green blue:blue alpha:1.0]];
	
	if ([self toDecimalFromSlider:red] + [self toDecimalFromSlider:green] + [self toDecimalFromSlider:blue] < 150) {
		[label setTextColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]];
	} else {
		[label setTextColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]];
	}

}



/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/


-(CGFloat)toDecimalFromSlider:(CGFloat)val {
	return val*255;
}


// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    [super viewDidLoad];
	//[label setText:[NSString stringWithFormat:@"%.0f", [slider value]]];
	label.font = [UIFont boldSystemFontOfSize:44.0];
	[label setText:[NSString stringWithFormat:@"%.0f %.0f %.0f", [self toDecimalFromSlider:[redSlider value]], [self toDecimalFromSlider:[greenSlider value]], [self toDecimalFromSlider:[blueSlider value]]]];
	
	//UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"FOOBAR"];
	//[nav pushNavigationItem:item animated:YES];

	
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end
