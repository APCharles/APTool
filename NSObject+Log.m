//
//  NSObject+Log.m
//  APTool
//
//  Created by 安鹏 on 16/4/12.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "NSObject+Log.h"

@implementation NSObject (Log)

//自动打印属性字符串
+ (void)autoPropertyWithDict:(NSDictionary *)dict{
    
    //拼接属性字符串
    NSMutableString *perStr = [NSMutableString string];
    
    //遍历字典，把字典中的key取出来，生成对应的属性代码
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        //属性类型
        NSString *type;
        
        if ([obj isKindOfClass:NSClassFromString(@"__NSCFString")]) {
            type = @"NSString";
        }else if ([obj isKindOfClass:[NSArray class]]){
            type = @"NSArray";
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFNumber")]){
            type = @"int";
        }else if ([obj isKindOfClass:[NSDictionary class]]){
            type = @"NSDictionary";
        }
        
        //拼接属性字符串
        NSString *str;
        if ([type containsString:@"NS"]) {
            
            str = [NSString stringWithFormat:@"@property (nonatomic, strong) %@ *%@",type,key];
        }
        else{
            str = [NSString stringWithFormat:@"@property (nonatomic, assign) %@ %@;",type,key];
        }
        
        // 每生成属性字符串，就自动换行。
        [perStr appendFormat:@"\n%@\n",str];
        
    }];
    
    
    NSLog(@"%@",perStr);
    
}

@end
