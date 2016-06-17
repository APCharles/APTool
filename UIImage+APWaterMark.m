//
//  UIImage+APWaterMark.m
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "UIImage+APWaterMark.h"

@implementation UIImage (APWaterMark)

+ (instancetype)apWaterWithImageName:(NSString *)imageName logo:(NSString *)logoName{
    
    UIImage *originalImage = [UIImage imageNamed:imageName];
    
    //上下文:基于位图(bitmap), 所有的东西需要绘制到一张新的图片上
    //创建一个位于位图的上下文(开启一个基于位图的上下文)
    //size 新图片的尺寸
    //opaque Yes 不透明 NO 透明
    
    UIGraphicsBeginImageContextWithOptions(originalImage.size, NO, 1.0);
    
    //画背景
   [originalImage drawInRect:CGRectMake(0, 0, originalImage.size.width, originalImage.size.height)];
    
    //画水印
    UIImage *logoImage = [UIImage imageNamed:logoName];
    CGFloat scale = 0.2;
    CGFloat margin = 5;
    CGFloat logoW = logoImage.size.width * scale;
    CGFloat logoH = logoImage.size.height * scale;
    CGFloat logoX = originalImage.size.width - logoW - margin;
    CGFloat logoY =originalImage.size.height - logoW - margin;
    [logoImage drawInRect:CGRectMake(logoX, logoY, logoW, logoH)];
    
    //从上下文取得新的图像
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;

}
@end
