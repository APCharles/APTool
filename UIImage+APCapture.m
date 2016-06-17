//
//  UIImage+APCapture.m
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "UIImage+APCapture.h"

@implementation UIImage (APCapture)

+ (instancetype)apCaptureWithView:(UIView *)view{
    
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 1.0);
    //渲染
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
     UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
}
@end
