//
//  UIImage+WF.m
//  WeiXin
//
//  Created by Leon on 17-3-2.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import "UIImage+WF.h"

@implementation UIImage (WF)

+(UIImage *)stretchedImageWithName:(NSString *)name{
    
    UIImage *image = [UIImage imageNamed:name];
    int leftCap = image.size.width * 0.5;
    int topCap = image.size.height * 0.5;
    return [image stretchableImageWithLeftCapWidth:leftCap topCapHeight:topCap];
}

@end
