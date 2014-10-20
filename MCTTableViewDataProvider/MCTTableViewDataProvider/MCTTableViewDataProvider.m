//
//  MCTTableViewDataProvider.m
//  MCTTableViewDataProvider
//
//  Created by Macostik on 10/20/14.
//  Copyright (c) 2014 Macostik. All rights reserved.
//

#import "MCTTableViewDataProvider.h"
#import "MCTEntryCell.h"

@implementation MCTTableViewDataProvider

+ (instancetype)instance {
    static MCTTableViewDataProvider *dataProvider = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataProvider = [[self alloc] init];
    });
    
    return dataProvider;
}

#pragma mark - UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.entries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MCTEntryCell *cell = [tableView dequeueReusableCellWithIdentifier:[MCTEntryCell identifier]];
    cell.item = self.entries[indexPath.row];    
    
    return cell;
}

#pragma mark - UITableViewDelegate method

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [MCTEntryCell entryCellHeightForIndexPath:self.entries[indexPath.row]];
}

@end
