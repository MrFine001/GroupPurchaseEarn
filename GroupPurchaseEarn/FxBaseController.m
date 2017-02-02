//
//  FxBaseController.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "FxBaseController.h"
#import "FxActivityIndicator.h"

@interface FxBaseController ()

@end

@implementation FxBaseController

- (void)viewDidLoad {
    NSLog(@"FxBaseController:viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNavBarImage{
    NSLog(@"NavBarImage");
    UIImage *image = [UIImage imageNamed:@"NavigationBar64.png"];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    NSDictionary *attribute = @{
                                NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:18]
                                };
    [self.navigationController.navigationBar setTitleTextAttributes:attribute];
}

- (void)setStatusBarStyle:(UIStatusBarStyle)style{
    [[UIApplication sharedApplication] setStatusBarStyle:style];
}

- (UIButton *)customButton:(NSString *)imageName selector:(SEL)sel{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(0, 0, 30, 44);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

- (void)setNavigationRight{
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    UIButton *serchBtn = [self customButton:@"search.png" selector:@selector(doSearch:)];
    UIButton *localBtn = [self customButton:@"location_img.png" selector:@selector(doLocation:)];
    
    [rightView addSubview:serchBtn];
    [rightView addSubview:localBtn];
    
    CGRect frame = localBtn.frame;
    frame.origin.x = 30;
    localBtn.frame = frame;
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:rightView];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)setNavigationLeft:(NSString *)name{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:name style:UIBarButtonItemStyleBordered target:self action:@selector(doLeft:)];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (IBAction)doLeft:(id)sender
{
}

- (IBAction)doSearch:(id)sender
{
}

- (IBAction)doLocation:(id)sender
{
}


#pragma mark - FxOperationDelegates

- (void)opFail:(NSString *)errorMessage
{
    BASE_ERROR_FUN(errorMessage);
//    [self showIndicator:errorMessage autoHide:YES afterDelay:YES];
}

- (void)opSuccess:(id)data
{
    NSLog(@"FxBaseController:opSuccess");
    [self hideIndicator];
}


#pragma mark - Activity methods

- (FxActivity *)showActivityInView:(UIView *)view
{
    FxActivity * activity = [[FxActivityIndicator alloc] initWithView:view];
    CGRect frame = view.bounds;
    
    activity.frame = frame;
    [view addSubview:activity];
    activity.labelText = @"";
    
    return activity;
}

- (void)showIndicator:(NSString *)tipMessage
             autoHide:(BOOL)hide
           afterDelay:(BOOL)delay
{
    if (_activity == nil) {
        _activity = [self showActivityInView:self.view];
    }
    
    if (tipMessage != nil) {
        _activity.labelText = tipMessage;
        [_activity show:NO];
    }
    
    if (hide && _activity.alpha>=1.0) {
        if (delay)
            [_activity hide:YES afterDelay:AnimationSecond];
        else
            [_activity hide:YES];
    }
}

- (void)hideIndicator
{
    [_activity hide:YES];
}


@end
