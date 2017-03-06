//
//  UIView+WF.m
//  WeiXin
//
//  Created by Leon on 17-3-2.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import "UIView+WF.h"

@implementation UIView (WF)

-(void)setH:(float)h{
    CGRect frm = self.frame;
    frm.size.height = h;
    self.frame = frm;
}

-(float)h{
    return self.frame.size.height;
}

-(void)setW:(float)w{
    CGRect frm = self.frame;
    frm.size.width = w;
    self.frame = frm;
}

-(float)w{
    return self.frame.size.width;
}

-(void)setY:(float)y{
    CGRect frm = self.frame;
    frm.origin.y = y;
    self.frame = frm;

}


-(float)y{
    return self.frame.origin.y;
}
@end
