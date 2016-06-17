//
//  NSObject+Selector.h
//  APTool
//
//  Created by 安鹏 on 16/5/16.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Selector)

- (id)performSelector:(SEL)selector withObjects:(NSArray *)objects;
@end
