//
//  ViewController.m
//  MCTTableViewDataProvider
//
//  Created by Macostik on 10/21/14.
//  Copyright (c) 2014 Macostik. All rights reserved.
//

#import "ViewController.h"
#import "MCTTableViewDataProvider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [MCTTableViewDataProvider instance].entries = [NSMutableOrderedSet orderedSetWithArray:@[@"one", @"two", @"tree"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
