//
//  UIScreen+WF.m
//  WeiXin
//
//  Created by Leon on 17-3-2.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import "UIScreen+WF.h"

@implementation UIScreen (WF)

-(CGFloat)screenH{
    return [UIScreen mainScreen].bounds.size.height;
}

-(CGFloat)screenW{
    return [UIScreen mainScreen].bounds.size.width;
}

@end
