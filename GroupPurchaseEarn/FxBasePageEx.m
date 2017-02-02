//
//  FxBasePageEx.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/16.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBasePageEx.h"
#import "FxGlobal.h"

@interface FxBasePageEx ()

@end

@implementation FxBasePageEx

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavBarImage];
    [self setNavigationRight];
    [self setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [self reloadLocation];
    [self addWidget];
}

- (void)addWidget{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) reloadLocation{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    _location = [[FxLocation alloc] init];
    _location.delegate = self;
    
    [_location startLocation];
}

- (void)didLocationAddress:(NSString *)address{
    [FxGlobal alertMessage:address];
}

- (void)didLocationCity:(NSString *)cityName{
    
    [self setNavigationLeft:cityName];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

- (void) doLocation:(id)sender{
    [self reloadLocation];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
