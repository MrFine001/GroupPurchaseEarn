//
//  ShangHuInfo.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "ShangHuInfo.h"

@implementation ShangHuInfo

+ (NSArray *)arrayFromDict:(NSDictionary *)dict
{
    NSArray *array = [dict objectForKey:@"businesses"];
    return [[self class] arrayFromArray:array];
}

+ (ShangHuInfo *)infoFromDict:(NSDictionary *)dict
{
    ShangHuInfo *info = [[ShangHuInfo alloc] init];
    NSNumber *numberID = [dict objectForKey:@"business_id"];
    
    info.ID = [numberID stringValue];
    info.name = [dict objectForKey:@"name"];
    info.address = [dict objectForKey:@"address"];
    info.telophone = [dict objectForKey:@"telephone"];
    info.photoUrl = [dict objectForKey:@"photo_url"];
    info.sphotoUrl = [dict objectForKey:@"s_photo_url"];
    info.avgRating = [[dict objectForKey:@"avg_rating"] integerValue];
    info.reviewCount = [[dict objectForKey:@"review_count"] integerValue];
    info.distance = [[dict objectForKey:@"distance"] integerValue];
//    info.deals = [DealInfo arrayFromArray:[dict objectForKey:@"deals"]];
    info.reviewUrl = [dict objectForKey:@"review_list_url"];
    info.businessUrl = [dict objectForKey:@"business_url"];
//    info.json = [FxJsonUtility jsonValueFromObject:dict];
    
    return info;
}

@end
