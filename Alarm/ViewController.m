//
//  ViewController.m
//  Alarm
//
//  Created by Faith Gleason on 5/5/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "ViewResult.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Set:(id)sender {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.timeZone = [NSTimeZone defaultTimeZone];
    dateFormat.timeStyle = NSDateFormatterShortStyle;
    dateFormat.dateStyle = NSDateFormatterShortStyle;
    
    NSString *formString = [dateFormat stringFromDate:_picker.date];
    NSLog(@"%@", formString);
    
    [self performSegueWithIdentifier:@"MySegue" sender:sender];
}

-(void)localnotification:(NSDate *)inputdate
{
    UILocalNotification *alarming = [[UILocalNotification alloc] init];
    alarming.fireDate = inputdate;
    alarming.alertBody = @"Wake. up.";
    alarming.soundName = @"Tornado_Siren_II-Delilah-747233690";
    
    [[UIApplication sharedApplication] scheduleLocalNotification:alarming];
    
    [self localnotification:_picker.date];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"MySegue"]) {
        
        // Get destination view
        ViewResult *vc = [segue destinationViewController];
        
        // Get button tag
        NSInteger selectedSegmentIndex = [(UISegmentedControl *)_segControl selectedSegmentIndex];
        
        // Set the selected button in the new view
        [vc setSelectedSegment:selectedSegmentIndex];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        dateFormat.timeZone = [NSTimeZone defaultTimeZone];
        dateFormat.timeStyle = NSDateFormatterShortStyle;
        dateFormat.dateStyle = NSDateFormatterMediumStyle;
        NSString *formString = [dateFormat stringFromDate:_picker.date];
        [vc setAlarmDate:formString];
    }
}

@end
