//
//  FxBaseWidget.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBaseWidget.h"

@implementation FxBaseWidget
- (void)viewDidLoad
{
    NSLog(@"FxBaseWidget:viewDidLoad");
    [super viewDidLoad];
    
    [self reloadData];
}

- (void)updateUI
{
}

- (void)reloadData
{
    NSLog(@"FxBaseWidget:reloadData");
    if (![self isReloadLocalData]) {
        [self requestServer];
    }
    else {
        [self requestServerOp];
        [self updateUI];
    }
}

- (BOOL)isReloadLocalData
{
    BOOL isReload = self.listData.count > 0;
    
    if (isReload) {
        [self updateUI];
    }
    
    return isReload;
}

- (void)requestServer
{
    NSLog(@"FxBaseWidget:requestServer");
    [self showIndicator:LoadingTip autoHide:NO afterDelay:NO];
    [self requestServerOp];
}

- (void)requestServerOp
{
    NSLog(@"FxBaseWidget:requestServerOp");
}
@end
