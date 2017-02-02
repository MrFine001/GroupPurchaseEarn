//
//  FxLocation.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/13.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol FxLocationDelegate;

@interface FxLocation : NSObject <CLLocationManagerDelegate>

@property(nonatomic, assign) id<FxLocationDelegate> delegate;
- (void)startLocation;

@end

@protocol FxLocationDelegate <NSObject>

- (void)didLocationCity:(NSString *)cityName;
- (void)didLocationAddress:(NSString *)address;

@end
