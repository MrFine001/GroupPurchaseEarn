//
//  HomePage.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "HomePage.h"
#import "PageInfo.h"
#import "FxDefine.h"

@interface HomePage ()

@end

@implementation HomePage

- (id)init{
    self = [super init];
    if (self) {
        [self addTabControllers];
    }
    
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)addTabControllers{
    self.tabBar.backgroundImage = [UIImage imageNamed:@"tab_bar_img.png"];
    self.tabBar.tintColor = RgbColor(255, 245, 124);
    self.viewControllers = [PageInfo pageControllers];
}


@end
