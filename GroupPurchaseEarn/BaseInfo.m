//
//  BaseInfo.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "BaseInfo.h"

@implementation BaseInfo

+(instancetype)infoFromDict:(NSDictionary *)dict{
    BaseInfo *info;
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    
    return info;
}

+(NSArray *)arrayFromDict:(NSDictionary *)dict{
    NSArray *array = [dict objectForKey:@""];
    return [[self class] arrayFromArray:array];
}

+(NSArray *)arrayFromArray:(NSArray *)array{
    NSMutableArray *infos = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dict in array ) {
        [infos addObject:[[self class] infoFromDict:dict]];
    }
    
    if (infos.count<=0) {
        infos = nil;
    }
    
    return infos;
}

-(NSComparisonResult)compare:(BaseInfo *)binfo{
    return [self.ID caseInsensitiveCompare:binfo.ID];
}

-(BOOL)isEqual:(BaseInfo *)bInfo{
    return [self.ID isEqualToString:bInfo.ID];
}
@end
