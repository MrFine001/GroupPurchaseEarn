//
//  FxGetShangHu.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxGetShangHu.h"
#import "ShangHuInfo.h"

@implementation FxGetShangHu

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSArray *infos = [ShangHuInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
}
@end
