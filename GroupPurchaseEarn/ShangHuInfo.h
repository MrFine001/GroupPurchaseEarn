//
//  ShangHuInfo.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "BaseInfo.h"

@interface ShangHuInfo : BaseInfo

@property(nonatomic, strong) NSString    *address;
@property(nonatomic, strong) NSString    *telophone;
@property(nonatomic, strong) NSString    *photoUrl;
@property(nonatomic, strong) NSString    *sphotoUrl;
@property(nonatomic, assign) NSInteger   avgRating;
@property(nonatomic, assign) NSInteger   reviewCount;
@property(nonatomic, assign) NSInteger   distance;
@property(nonatomic, strong) NSArray     *deals;
@property(nonatomic, strong) NSString    *reviewUrl;
@property(nonatomic, strong) NSString    *businessUrl;

@end
