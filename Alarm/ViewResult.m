//
//  ViewResult.m
//  Alarm
//
//  Created by Faith Gleason on 5/5/14.
//  Copyright (c) 2014 Faith Gleason. All rights reserved.
//

#import "ViewResult.h"

@interface ViewResult ()

@end

@implementation ViewResult

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_alarmDisplay setText:[NSString stringWithFormat:@"You have set an alarm for %@", _alarmDate]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Cancel:(id)sender {
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
}
@end
