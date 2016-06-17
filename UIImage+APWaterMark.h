//
//  UIImage+APWaterMark.h
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (APWaterMark)

/**
 *  返回一张带水印的图片
 *
 *  @param imageName 主图
 *  @param logoName  水印的图片
 *
 *  @return  带水印的图片
 */
+ (instancetype)apWaterWithImageName:(NSString *)imageName logo:(NSString *)logoName;
@end
