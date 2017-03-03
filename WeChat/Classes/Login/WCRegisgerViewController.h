//
//  WCRegisgerViewController.h
//  WeChat
//
//  Created by Leon on 17/3/4.
//  Copyright (c) 2017年 Leon. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol WCRegisgerViewControllerDelegate <NSObject>

/**
 *  完成注册
 */
-(void)regisgerViewControllerDidFinishRegister;

@end
@interface WCRegisgerViewController : UIViewController

@property (nonatomic, weak) id<WCRegisgerViewControllerDelegate> delegate;

@end
