//
//  FxTableWidget.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBaseWidget.h"

@interface FxTableWidget : FxBaseWidget {
    IBOutlet UITableView     *_tableView;
    CGFloat                 _cellHeight;
}

@property(nonatomic, strong) NSString   *cellIdentifier;

@end
