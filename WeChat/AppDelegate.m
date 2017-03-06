//
//  AppDelegate.m
//  02.XMPP框架的导入
//
//  Created by Leon on 17/3/4.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import "AppDelegate.h"
#import "DDLog.h"
#import "DDTTYLogger.h"
#import "WCNavigationController.h"
#import "XMPPFramework.h"


#define systemVersionIsHigherThan(aVersion) [[UIDevice currentDevice].systemVersion doubleValue] > aVersion
#define systemVersionIsLowerThan(aVersion) [[UIDevice currentDevice].systemVersion doubleValue] < aVersion


@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    // 沙盒的路径
    NSString* path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"%@", path);

    // 设置导航栏背景
    [WCNavigationController setupNavTheme];

    // 从沙里加载用户的数据到单例
    [[WCUserInfo sharedWCUserInfo] loadUserInfoFromSanbox];

    // 判断用户的登录状态，YES 直接来到主界面
    if ([WCUserInfo sharedWCUserInfo].loginStatus) {
        UIStoryboard* storayobard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        self.window.rootViewController = storayobard.instantiateInitialViewController;

// 自动登录服务
// 1秒后再自动登录
#warning 一般情况下，都不会马上连接，会稍微等等
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [[WCXMPPTool sharedWCXMPPTool] xmppUserLogin:nil];
        });
    }
    //注册应用接收本地通知
    if (systemVersionIsHigherThan(8) ) {
        UIUserNotificationSettings* settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound categories:nil];
        [application registerUserNotificationSettings:settings];
    }

    return YES;
}

@end
