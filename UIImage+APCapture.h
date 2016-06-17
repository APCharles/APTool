//
//  UIImage+APCapture.h
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (APCapture)

/**
 *  屏幕截图
 *
 *  @param view 截图的view
 *
 *  @return 屏幕截图
 */
+ (instancetype)apCaptureWithView:(UIView *)view;
@end
