//
//  UIImage+APStretch.m
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "UIImage+APStretch.h"

@implementation UIImage (APStretch)


+ (UIImage *)resizableImage:(NSString *)imgName{
    
    UIImage *normal = [UIImage imageNamed:imgName];
    CGFloat w = normal.size.width * 0.5;
    CGFloat h = normal.size.height * 0.5;
    
    return [normal resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
    
}
@end
