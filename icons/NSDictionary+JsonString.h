//
//  NSMutableDictionary+JsonString.h
//  H5SDK
//
//  Created by 郭梦浩 on 15/11/9.
//  Copyright © 2015年 郭梦浩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JsonString)
- (NSString *)JSONString;
- (NSDictionary *)parseJSONStringToNSDictionary:(NSString *)JSONString;
@end
