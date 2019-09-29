//
//  HHViewController.m
//  HHUIBase_OC
//
//  Created by wxGithup on 09/27/2019.
//  Copyright (c) 2019 wxGithup. All rights reserved.
//

#import "HHViewController.h"
#import <objc/runtime.h>

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"首页";
}

#pragma mark - Header Methods
- (void)section_02:(TableSectionModel *)sectionItem {
    NSLog(@"执行操作中...");
}

#pragma mark - Cell Methods
- (void)row_00_01:(TableRowModel *)rowItem {
    NSLog(@"点我执行操作...");
}

@end

