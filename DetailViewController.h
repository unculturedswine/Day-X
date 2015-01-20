//
//  DetailViewController.h
//  DayX
//
//  Created by Joel on 1/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const EntryKey = @"entry";
static NSString * const TitleKey = @"title";
static NSString * const TextKey = @"text";

@interface DetailViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@end
