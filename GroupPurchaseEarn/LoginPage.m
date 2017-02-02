//
//  LoginPage.m
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#import "LoginPage.h"
#import "FxGlobal.h"
#import "AppDelegate.h"

@interface LoginPage ()

@end

@implementation LoginPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)doSina:(id)sender{
    [FxGlobal global].userInfo = [[UserInfo alloc] init];
    [[AppDelegate appDeg] showHomePage];
}


-(IBAction)doRenren:(id)sender{
    
}

-(IBAction)doLook:(id)sender{
    [[AppDelegate appDeg] showHomePage];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
