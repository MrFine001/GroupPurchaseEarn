//
//  FxBasePageEx.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/16.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBasePage.h"
#import "FxLocation.h"
//#import "FxButtonHelper.h"
//#import "AreaWidget.h"
#import "FxBaseWidget.h"

@interface FxBasePageEx : FxBasePage  <FxLocationDelegate> {
    FxLocation      *_location;
//    FxButtonHelper  *_btnHelper;
//    AreaWidget      *_firstArea;
//    AreaWidget      *_secondArea;
    FxBaseWidget    *_widget;
    
    IBOutlet UIView *_contentBackView;
    IBOutlet UIView *_areaBackView;
    IBOutlet UIView *_leftView;
    IBOutlet UIView *_rightView;
    IBOutlet UIButton *_btnArea;
}

- (void)didSelectFirstArea:(NSInteger)row;
- (void)didSelectSecondArea:(NSInteger)row;

@end
