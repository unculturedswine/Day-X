//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Joel on 1/21/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "Entry.h"

@implementation ListTableViewDataSource

- (void)registerTableView:(UITableView *)tableview {
    // This is not how I remember it 13.6
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *entries = [Entry loadEntriesFromDefaults]; // 13.4
    return entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *entries = [Entry loadEntriesFromDefaults];
    // Looking at the solution, I really don't know what's going on. 
}

@end
