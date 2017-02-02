//
//  ShangHuPage.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "ShangHuPage.h"
#import "ShangHuInfo.h"
//#import "AreaInfo.h"
//#import "ShangHuDetailWidget.h"

@implementation ShangHuPage

- (void)viewDidLoad
{
    NSLog(@"ShangHuPage:viewDidLoad");
    [super viewDidLoad];
}

- (void)addWidget
{
    _widget = [[ShangHuWidget alloc] init];
    _widget.owner = self;
    _widget.view.frame = _contentBackView.bounds;
    
    [_contentBackView addSubview:_widget.view];
    NSLog(@"ShangHuPage:addWidget");
}

- (IBAction)doLocation:(id)sender
{
    [_widget doLocation:sender];
}

- (void)didSelectShangHu:(NSInteger)row
{
//    ShangHuInfo *info = [_widget.listData objectAtIndex:row];
//    ShangHuDetailWidget *detail = [[ShangHuDetailWidget alloc] init];
    
//    detail.title = DetailTitle;
//    detail.info = info;
    
//    [self.navigationController pushViewController:detail animated:YES];
}


@end
