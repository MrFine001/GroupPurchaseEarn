//
//  FxLocation.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/13.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxLocation.h"
#import "FxDefine.h"
#import "FxGlobal.h"

@implementation FxLocation {
    CLLocationManager *_manager;
}

- (id)init{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (void)startLocation{
    if ([CLLocationManager locationServicesEnabled]) {
        _manager = [[CLLocationManager alloc] init];
        _manager.delegate = self;
        //控制定位精度，越高耗电量越大
        _manager.desiredAccuracy = kCLLocationAccuracyBest;
        //控制定位服务更新频率，单位是米
        _manager.distanceFilter = LocationDistance;
        [_manager startUpdatingLocation];
        
        if (![FxGlobal isSystemLowIOS8]) {
            [_manager requestAlwaysAuthorization];
        }
    }
}

-  (void)searchCityName:(CLLocation *)location
{
    CLGeocoder *coder = [[CLGeocoder alloc] init];
    
    [coder reverseGeocodeLocation:location completionHandler:^(NSArray *placemarks, NSError *error) {
        for (CLPlacemark *mark in placemarks) {
            BASE_INFO_FUN(mark.name);
            BASE_INFO_FUN(mark.locality);
            NSString *cityName = [mark.locality stringByReplacingOccurrencesOfString:CitySuffix withString:@""];
            
            [self.delegate didLocationCity:cityName];
            [self.delegate didLocationAddress:mark.name];
            
            break;
        }
    }];
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    BASE_ERROR_FUN(([NSString stringWithFormat:@"status:%@",@(status)]));
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    [self searchCityName:newLocation];
}

-(void)locationManager:(CLLocationManager *)manager
    didUpdateLocations:(NSArray *)locations
{
    CLLocation *newLocation = [locations firstObject];
    
    [self searchCityName:newLocation];
    
    //停止更新位置（如果定位服务不需要实时更新的话，那么应该停止位置的更新）
    [_manager stopUpdatingLocation];
}
@end
