//
//  Entry.m
//  DayX
//
//  Created by Joel on 1/20/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"
#import "DetailViewController.h";

@implementation Entry

-(NSDictionary *)entryDictionary {
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    if (self.title) {
        [entryDictionary setObject:self.title forKey:titleKey];
    }
    if (self.text) {
        [entryDictionary setObject:self.text forKey:textKey];
    }
    if (self.timestamp) {
        [entryDictionary setObject:self.timestamp forKey:timestampKey];
    }
    return entryDictionary;
}
-(id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[titleKey];
        self.text = dictionary[textKey];
        self.timestamp = dictionary[timestampKey];
    }
    return self;
}

+ (NSMutableArray *)loadEntriesFromDefaults {
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:entriesKey];
}
+ (void)storeEntriesInDefaults:(NSArray *)entries {

}

@end
