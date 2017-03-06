//
//  UIStoryboard+WF.h
//  WeiXin
//
//  Created by Leon on 17/3/3.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (WF)

/**
 * 1.显示Storybaord的第一个控制器到窗口
 */
+(void)showInitialVCWithName:(NSString *)name;
+(id)initialVCWithName:(NSString *)name;
@end
