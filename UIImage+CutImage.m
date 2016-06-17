//
//  UIImage+CutImage.m
//  常用方法
//
//  Created by rimi on 15/6/15.
//  Copyright (c) 2015年 Charles. All rights reserved.
//

#import "UIImage+CutImage.h"

@implementation UIImage (CutImage)


+ (instancetype)circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{
    
    //加载原图
    UIImage *originalImage = [UIImage imageNamed:name];
    
    //开启上下文
    CGFloat imageW = originalImage.size.width + borderWidth;
    CGFloat imageH = originalImage.size.height + borderWidth;
    CGSize imageSize = CGSizeMake(imageW, imageH);
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 1.0);
    
    //取得当前的上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //画外圈的大圆
    [borderColor set];
 
    CGFloat bigRadius = imageW * 0.5;
    CGFloat centerX = bigRadius;
    CGFloat centerY = bigRadius;
    CGContextAddArc(ctx, centerX, centerY, bigRadius, 0, M_PI * 2, 0);
    CGContextFillPath(ctx);
        CGContextClip(ctx);
    
    //小圆
    CGFloat smallRadius = imageW - borderWidth;
    CGContextAddArc(ctx, centerX, centerY, smallRadius, 0, M_PI * 2, 0);
    //裁剪
    CGContextClip(ctx);
   
    //画图
    [originalImage drawInRect:CGRectMake(borderWidth, borderWidth, originalImage.size.width, originalImage.size.height)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    return newImage;
    
}
@end
