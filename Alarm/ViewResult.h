//
//  ViewResult.h
//  Alarm
//
//  Created by Faith Gleason on 5/5/14.
//  Copyright (c) 2014 Faith Gleason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewResult : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *alarmDisplay;
@property (nonatomic) NSInteger SelectedSegment;

@property (nonatomic) NSString* alarmDate;

- (IBAction)Cancel:(id)sender;

@end
