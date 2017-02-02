//
//  FxDownload.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/28.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShangHuInfo.h"

@interface FxDownload : NSObject

@property(nonatomic, strong)NSMutableDictionary *dictIcons;

+ (FxDownload *)download;

- (void)cancelDownload;
- (void)setShangHuIcon:(ShangHuInfo *)shangHuInfo
             imageView:(UIImageView *)imageView;

@end
