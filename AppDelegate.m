//
//  AppDelegate.m
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "AppDelegate.h"
#import "NSDictionary+JsonString.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options{
    
//    //将url转为字符串 并进行解码
//    NSString * urlString = [self decodeFromPercentEscapeString:url.absoluteString];
//    
//    //对url.absoluteString进行截取，拿到传递过来的数据并进行操作
//    NSString *schemStr = [NSString stringWithFormat:@"%@://",url.scheme];
//    //取得数据，对数据进行处理
//    NSString *dataStr = [urlString substringWithRange:NSMakeRange(schemStr.length, urlString.length - schemStr.length)];
//    
//    /**
//     *  这里进行数据的操作，包括解析等，例如解析成字典形式，根据判断是否存在某一个key值进行操作
//     */
//    NSDictionary * dic = [[NSDictionary alloc] init];
//    dic =   [dic parseJSONStringToNSDictionary:dataStr];
//    
//  
//    if ([[dic allKeys] containsObject:@"staff_code"]) {
//     
//        UIAlertView *ule = [[UIAlertView alloc] initWithTitle:@"工号" message:dic[@"staff_code" ] delegate:self cancelButtonTitle:@"确认" otherButtonTitles:@"取消", nil];
//        [ule show];
//        
//    }
  
    return YES;
}

/**
 urlUrlDecode
 *  字符串 解码
 *
 *  @param input <#input description#>
 *
 *  @return <#return value description#>
 */
- (NSString *)decodeFromPercentEscapeString: (NSString *) input
{
    NSMutableString *outputStr = [NSMutableString stringWithString:input];
    [outputStr replaceOccurrencesOfString:@"+"
                               withString:@" "
                                  options:NSLiteralSearch
                                    range:NSMakeRange(0, [outputStr length])];
    
   
    return [outputStr stringByRemovingPercentEncoding];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
