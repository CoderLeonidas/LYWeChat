//
//  UIStoryboard+WF.m
//  WeiXin
//
//  Created by Leon on 17/3/3.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import "UIStoryboard+WF.h"

@implementation UIStoryboard (WF)

+(void)showInitialVCWithName:(NSString *)name{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    //WXLog(@"%@",[UIApplication sharedApplication].keyWindow);
    [UIApplication sharedApplication].keyWindow.rootViewController = storyboard.instantiateInitialViewController;
}

+(id)initialVCWithName:(NSString *)name{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return [storyboard instantiateInitialViewController];
}
@end
