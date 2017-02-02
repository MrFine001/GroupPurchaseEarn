//
//  FxBaseWidget.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBaseController.h"

@interface FxBaseWidget : FxBaseController

@property(strong, nonatomic) NSMutableArray    *listData;
@property(nonatomic, assign) id                 owner;

- (void)updateUI;
- (void)reloadData;
- (BOOL)isReloadLocalData;
- (void)requestServer;

@end
