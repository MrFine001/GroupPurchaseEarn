//
//  FxDownload.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/28.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxDownload.h"
#import "FxFileUtility.h"


@interface FxDownload ()
@property(nonatomic, strong) NSOperationQueue   *iconQueue;
@end


@implementation FxDownload

+ (FxDownload *)download
{
    static FxDownload *s_download = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        s_download = [[FxDownload alloc] init];
    });
    
    return s_download;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.dictIcons = [[NSMutableDictionary alloc] init];
        
        _iconQueue = [[NSOperationQueue alloc] init];
        [_iconQueue setMaxConcurrentOperationCount:4];
    }
    
    return self;
}


#pragma mark - Download NewsIcon

- (void)cancelDownload
{
    [_iconQueue cancelAllOperations];
}

- (void)setShangHuIcon:(ShangHuInfo *)shangHuInfo
             imageView:(UIImageView *)imageView
{
    NSString *file = [NSString stringWithFormat:ShangHuIconPrex, shangHuInfo.ID];
    UIImage *image = nil;
    
    file = [FxGlobal getCacheImage:file];
    
    if ([FxFileUtility isFileExist:file]) {
        image = [UIImage imageWithContentsOfFile:file];
        imageView.image = image;
    }
    else {
        imageView.image = [UIImage imageNamed:@"DefaultIcon.png"];
        [self downloadShangHuIcon:shangHuInfo];
    }
}

- (void)downloadShangHuIcon:(ShangHuInfo *)info
{
    NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(downNewsIconThread:) object:info];
    
    [_iconQueue addOperation:op];
}

- (void)downNewsIconThread:(ShangHuInfo *)info
{
    NSString *file = [NSString stringWithFormat:ShangHuIconPrex, info.ID];
    NSURL *url = [NSURL URLWithString:info.sphotoUrl];
    
    file = [FxGlobal getCacheImage:file];
    if (url != nil) {
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        NSDictionary *dictInfo = @{
                                   @"info": info,
                                   @"data": image
                                   };
        SEL sel = @selector(notifyNewsIconDownload:);
        
        [data writeToFile:file atomically:YES];
        [self performSelectorOnMainThread:sel
                               withObject:dictInfo
                            waitUntilDone:NO];
    }
}

- (void)notifyNewsIconDownload:(NSDictionary *)dict
{
    SendNotify(NofifyShangHuIcon, dict)
}

@end
