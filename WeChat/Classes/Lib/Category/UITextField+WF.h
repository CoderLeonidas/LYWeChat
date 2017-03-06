//
//  UITextField+WF.h
//  WeiXin
//
//  Created by Leon on 17-3-2.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (WF)

/**
 添加文件输入框左边的View,添加图片
 */
-(void)addLeftViewWithImage:(NSString *)image;

/**
 * 判断是否为手机号码
 */
-(BOOL)isTelphoneNum;
@end
