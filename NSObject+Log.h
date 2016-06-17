//
//  NSObject+Log.h
//  APTool
//
//  Created by 安鹏 on 16/4/12.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Log)

/**
 *  根据字典自动生成相应属性
 *
 *  @param dict 转模型的字典
 */
+ (void)autoPropertyWithDict:(NSDictionary *)dict;
@end
