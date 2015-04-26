//
//  ViewController.m
//  HW_BluePrint3D
//
//  Created by Alexander on 26.04.15.
//  Copyright (c) 2015 Alexander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *items;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    items = @[@"Обезьяна", @"Львенок", @"Linux", @"Овца на веле"];
}

#pragma mark - Table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return items.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = items[indexPath.row];
    return cell;
}
@end
