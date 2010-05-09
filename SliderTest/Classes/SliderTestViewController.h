//
//  SliderTestViewController.h
//  SliderTest
//
//  Created by Marshall Huss on 6/9/09.
//  Copyright MITRE Corporation 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderTestViewController : UIViewController {

	//IBOutlet UISlider *slider;
	IBOutlet UISlider *redSlider;
	IBOutlet UISlider *greenSlider;
	IBOutlet UISlider *blueSlider;
	IBOutlet UILabel *label;
	IBOutlet UINavigationBar *nav;
}

//@property (nonatomic, retain) UISlider *slider;
@property (nonatomic, retain) UISlider *redSlider;
@property (nonatomic, retain) UISlider *greenSlider;
@property (nonatomic, retain) UISlider *blueSlider;
@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UINavigationBar *nav;

-(IBAction)updateLabel:(id)sender;
-(CGFloat)toDecimalFromSlider:(CGFloat)val;

@end

