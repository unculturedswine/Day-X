//
//  Entry.h
//  DayX
//
//  Created by Joel on 1/20/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const titleKey = @"title";
static NSString * const textKey = @"text";
static NSString * const timestampKey = @"timestamp";

@interface Entry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *timestamp;

-(NSDictionary *)entryDictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;

+ (NSMutableArray *)loadEntriesFromDefaults;
+ (void)storeEntriesInDefaults:(NSArray *)entries;

@end
