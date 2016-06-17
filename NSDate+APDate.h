//
//  NSDate+APDate.h
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (APDate)

/**
 *  是否为今天
 */
- (BOOL)isToday;
/**
 *  是否为昨天
 */
- (BOOL)isYesterday;
/**
 *  是否为今年
 */
- (BOOL)isThisYear;

/**
 *  返回一个只有年月日的时间
 */
- (NSDate *)dateWithYMD;

/**
 *  获得与当前时间的差距
 */
- (NSDateComponents *)gapToNow;

@end
