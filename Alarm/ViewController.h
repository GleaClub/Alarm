//
//  ViewController.h
//  Alarm
//
//  Created by Faith Gleason on 5/5/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *picker;
- (IBAction)Set:(id)sender;
-(void) localnotification:(NSDate *)inputdate;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;


@end
