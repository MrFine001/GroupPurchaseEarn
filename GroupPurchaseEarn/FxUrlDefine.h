//
//  FxUrlDefine.h
//  GroupPurchaseEarn
//
//  Created by FineRui on 2017/1/11.
//  Copyright © 2017年 FanRui. All rights reserved.
//

#ifndef FxUrlDefine_h
#define FxUrlDefine_h


// 0正式版，1测试版
#define ProductType 1

// 正式版自动使用正式环境
#ifdef OFFICIAL
#undef ProductType
#define ProductType 0
#endif

#define AppKey      @"30376663"
#define Category    @""

#if ProductType == 0
#define BaseHost    @"http://api.dianping.com"
#define BasePort    @""
#else
#define BaseHost    @"http://api.dianping.com"
#define BasePort    @""
#endif

#define BaseServer  BaseHost BasePort
#define BaseURLPath "/v1/"
#define BaseURL     BaseServer BaseURLPath

#define AppKeyArg   "appkey=%@"
#define CategoryArg "&category=%@"
#define CityArg     "&city=%@"

#define ShangHuURL  @"http://api.dianping.com/v1/business/find_businesses?appkey=30376663&category=%E4%BC%91%E9%97%B2%E5%A8%B1%E4%B9%90&city=%E5%8C%97%E4%BA%AC&sign=A4BE2A352A8CFC523B3D799C54E4E23307EAC24C"

#define AreaURL     @"http://api.dianping.com/v1/metadata/get_regions_with_businesses?appkey=30376663&city=%E5%8C%97%E4%BA%AC&sign=3E75940C5B6612C75CBB20939D342438C6B6C447"

#define TuanGouURL  @"http://api.dianping.com/v1/deal/find_deals?appkey=30376663&category=%E7%BE%8E%E9%A3%9F&city=%E5%8C%97%E4%BA%AC&page=1&sign=8C9AA2743867EBE760CCCB10E4011D8ABE1DA279"


#define ShangHuPath @"business/find_businesses?"
#define ShangHuFmt  @"%@" AppKeyArg CategoryArg CityArg "&sign=A4BE2A352A8CFC523B3D799C54E4E23307EAC24C"


// 微博OAuth2.0
#define OAuthURL        @"https://api.weibo.com/oauth2/authorize"
#define OAuthTokenURL   @"https://api.weibo.com/oauth2/access_token"
#define WeiBoSecret     @"2e0a3e4dbde5e6e55b107ebf9c7529fe"
#define WeiBoGrantType  @"authorization_code"
#define WeiBoUserURL    @"https://api.weibo.com/2/users/show.json"
#endif /* FxUrlDefine_h */
