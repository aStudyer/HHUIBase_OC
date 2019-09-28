//
//  HHViewController.m
//  HHUIBase_OC
//
//  Created by wxGithup on 09/27/2019.
//  Copyright (c) 2019 wxGithup. All rights reserved.
//

#import "HHViewController.h"

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"首页";
    
    [self.dataList enumerateObjectsUsingBlock:^(TableSectionModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        switch (obj.section) {
            case 2:
                obj.operation = ^(UITableView * _Nonnull tableView, NSInteger section) {
                    NSLog(@"执行操作中...");
                };
                break;
                
            default:
                break;
        }
        [obj.items enumerateObjectsUsingBlock:^(TableRowModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            switch (obj.indexPath.section) {
                case 0:
                    switch (obj.indexPath.row) {
                        case 1:
                            obj.operation = ^(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath) {
                                NSLog(@"点我执行操作...");
                            };
                            break;
                            
                        default:
                            break;
                    }
                    break;
                    
                default:
                    break;
            }
        }];
    }];
}

@end
