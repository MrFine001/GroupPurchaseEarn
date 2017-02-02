//
//  FxBaseCell.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseInfo.h"

@interface FxBaseCell : UITableViewCell {
    IBOutlet UILabel        *_titleLabel;
}

@property(nonatomic, strong) BaseInfo   *cellInfo;

- (void)initCell;
- (void)setCellData:(BaseInfo *)info;

@end
