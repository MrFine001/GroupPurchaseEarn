//
//  BaseInfo.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseInfo : NSObject

@property(nonatomic, strong) NSString *ID;
@property(nonatomic, strong) NSString *name;

+(instancetype)infoFromDict:(NSDictionary *)dict;
+(NSArray *)arrayFromDict:(NSDictionary *)dict;
+(NSArray *)arrayFromArray:(NSArray *)array;

@end
