//
//  ShangHuWidget.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "ShangHuWidget.h"
#import "FxGetShangHu.h"
#import "ShangHuPage.h"

@implementation ShangHuWidget

- (void)viewDidLoad
{
    self.cellIdentifier = @"ShangHuCell";
    _cellHeight = 100;
    
    [super viewDidLoad];
    NSLog(@"ShangHuWidget:viewDidLoad");
}

- (void)requestServerOp
{
    NSDictionary *dictInfo = @{@"url":ShangHuURL,
                               };
    
    _operation = [[FxGetShangHu alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [(ShangHuPage *)self.owner didSelectShangHu:indexPath.row];
}

@end
