//
//  ShangHuCell.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "ShangHuCell.h"
#import "ShangHuInfo.h"
#import "FxDownload.h"

@implementation ShangHuCell

- (void)initCell
{
    NSLog(@"ShangHuCell:initCell");
    [super initCell];
    RegisterNotify(NofifyShangHuIcon, @selector(iconDownload:))
}

- (void)dealloc
{
    [super dealloc];
    RemoveNofify;
}

- (void)setCellData:(ShangHuInfo *)info
{
    [super setCellData:info];
    
    [[FxDownload download] setShangHuIcon:info imageView:_imageView];
    
    _reviewLabel.text = [NSString stringWithFormat:@"评论：%@", @(info.reviewCount)];
    _addressLabel.text = [NSString stringWithFormat:@"%@  距离：%@", info.address, @(info.distance)];
    
    [self setStar:info];
}

- (void)setStar:(ShangHuInfo *)info
{
    NSString *starName = [NSString stringWithFormat:@"star_16_%@.png",@(info.avgRating)];
    
    _ratingView.image = [UIImage imageNamed:starName];
    NSLog(@"ShangHuCell:setStar:%@", starName);
}

- (void)iconDownload:(NSNotification *)notification
{
    NSDictionary *dict = [notification object];
    ShangHuInfo *info = [dict objectForKey:@"info"];
    
    if ([info.ID isEqualToString:self.cellInfo.ID]) {
        UIImage *image = [dict objectForKey:@"data"];
        _imageView.image = image;
    }
}


@end
