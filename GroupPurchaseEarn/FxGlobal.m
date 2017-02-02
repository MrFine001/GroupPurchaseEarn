//
//  FxGlobal.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/12.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxGlobal.h"
#import "FxDefine.h"
#import "FxFileUtility.h"
#import <UIKit/UIKit.h>

@implementation FxGlobal

+ (FxGlobal *)global
{
    static FxGlobal *s_global = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_global = [[FxGlobal alloc] init];
    });
    
    return s_global;
}

- (id)init
{
    self = [super init];
    if (self) {
        //self.userInfo = [[UserInfo alloc] init];
    }
    
    return self;
}


#pragma mark - 系统版本

+ (BOOL)isSystemLowIOS8
{
    UIDevice *device = [UIDevice currentDevice];
    CGFloat systemVer = [[device systemVersion] floatValue];
    if (systemVer - IOSBaseVersion8 < -0.001) {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isSystemLowIOS7
{
    UIDevice *device = [UIDevice currentDevice];
    CGFloat systemVer = [[device systemVersion] floatValue];
    if (systemVer - IOSBaseVersion7 < -0.001) {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isSystemLowiOS6
{
    UIDevice *device = [UIDevice currentDevice];
    CGFloat systemVer = [[device systemVersion] floatValue];
    if (systemVer < IOSBaseVersion6) {
        return YES;
    }
    
    return NO;
}

#pragma mark - 系统提示

+ (void)alertMessage:(NSString *)message
{
    [FxGlobal alertMessageEx:message
                       title:nil
                    okTtitle:@"确定"
                 cancelTitle:nil
                    delegate:nil];
}

+ (void)alertMessageEx:(NSString *)message
                 title:(NSString *)title
              okTtitle:(NSString *)okTitle
           cancelTitle:(NSString *)cancelTitle
              delegate:(id)delegate
{
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:title
                              message:message
                              delegate:delegate
                              cancelButtonTitle:cancelTitle
                              otherButtonTitles:okTitle,
                              nil];
    
    [alertView show];
}

#pragma mark - 缓存路径
#if 1
+ (NSString *)getRootPath
{
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:RootPath];
    [FxFileUtility createPath:path];
    
    return path;
}

+ (NSString *)getCacheImage:(NSString *)fileName
{
    NSString *path = [NSString stringWithFormat:@"%@/%@", [FxGlobal getRootPath], CacheImagePath];
    
    [FxFileUtility createPath:path];
    path = [NSString stringWithFormat:@"%@/%@.jpg", path, fileName];
    
    return path;
}

+ (NSString *)getUserDBFile
{
    NSString *path = [FxGlobal getRootPath];
    
    return [path stringByAppendingPathComponent:DBFile];
}
#endif
@end
