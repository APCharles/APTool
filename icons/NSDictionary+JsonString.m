//
//  NSMutableDictionary+JsonString.m
//  H5SDK
//
//  Created by 郭梦浩 on 15/11/9.
//  Copyright © 2015年 郭梦浩. All rights reserved.
//

#import "NSDictionary+JsonString.h"

@implementation NSDictionary (JsonString)
- (NSString*)JSONString
{
    NSError* error = nil;
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    if (error != nil) {
        NSLog(@"NSDictionary JSONString error: %@", [error localizedDescription]);
        return nil;
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

-(NSDictionary *)parseJSONStringToNSDictionary:(NSString *)JSONString {
    NSData *JSONData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableLeaves error:nil];
    return responseJSON;
}
@end
