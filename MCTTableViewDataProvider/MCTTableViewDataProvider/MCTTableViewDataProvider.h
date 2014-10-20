//
//  MCTTableViewDataProvider.h
//  MCTTableViewDataProvider
//
//  Created by Macostik on 10/20/14.
//  Copyright (c) 2014 Macostik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MCTTableViewDataProvider : NSObject <UITableViewDataSource, UITabBarDelegate>

@property (strong, nonatomic) NSMutableOrderedSet *entries;

+ (instancetype)instance;

@end
