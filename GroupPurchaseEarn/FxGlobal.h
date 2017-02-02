//
//  FxGlobal.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/12.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"

@interface FxGlobal : NSObject
@property(nonatomic, strong) UserInfo     *userInfo;

+ (FxGlobal *)global;
+ (BOOL)isSystemLowIOS8;
+ (BOOL)isSystemLowIOS7;
+ (BOOL)isSystemLowiOS6;

// 系统提示
+ (void)alertMessage:(NSString *)message;

// 缓存路径
#if 1
+ (NSString *)getRootPath;
+ (NSString *)getCacheImage:(NSString *)fileName;
+ (NSString *)getUserDBFile;
#endif
@end
