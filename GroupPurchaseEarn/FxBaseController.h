//
//  FxBaseController.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FxOperation.h"
#import "FxActivity.h"

@interface FxBaseController : UIViewController <FxOperationDelegate> {
    FxOperation     *_operation;
    FxActivity      *_activity;
}

- (void)setNavBarImage;
- (void)setNavigationRight;
- (void)setNavigationLeft:(NSString *)name;
- (void)setStatusBarStyle:(UIStatusBarStyle)style;
@end
