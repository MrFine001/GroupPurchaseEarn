//
//  PageInfo.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/12.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "BaseInfo.h"

@interface PageInfo : BaseInfo
@property(nonatomic, strong) NSString *image;
@property(nonatomic, strong) NSString *selectImage;
@property(nonatomic, assign) BOOL     unLoad;
+ (NSArray *)pageControllers;
@end
