//
//  FxBaseCell.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBaseCell.h"

@implementation FxBaseCell

- (void)initCell
{
}

- (void)setCellData:(BaseInfo *)info
{
    self.cellInfo = info;
    if ([info isKindOfClass:[NSString class]]) {
        _titleLabel.text = (NSString *)info;
    }
    else {
        _titleLabel.text = info.name;
    }
}


@end
