//
//  UIImage+APStretch.h
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (APStretch)

/**
 *  返回一张可以随意拉伸不变形的图片
 *
 *  @param imgName 图片名称
 *
 *  @return 不变形的图片
 */
+ (UIImage *)resizableImage:(NSString *)imgName;
@end
