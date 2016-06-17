//
//  ViewController.m
//  APTool
//
//  Created by 安鹏 on 16/3/23.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+APWaterMark.h"
#import "UIImage+APCapture.h"
#import "NSDate+APDate.h"
#import "NSObject+Log.h"
#import <QuartzCore/QuartzCore.h>
#import "UIImage+CutImage.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//
    self.view.backgroundColor = [UIColor redColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 30, 200, 200)];
    //imageView.backgroundColor = [UIColor redColor];
    imageView.image = [self circleImage:[UIImage imageNamed:@"2010e3a0c7f88c3f5f5803bf66addd93"] withParam:42.0];
    [self.view addSubview:imageView];
    
//     UIImageView *imageViewtwo = [[UIImageView alloc] initWithFrame:CGRectMake(30, 190, 200, 500)];
//    imageViewtwo.image = [UIImage apCaptureWithView:self.view];
//    
//    [self.view addSubview:imageViewtwo];
    
//    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
//    formater.dateFormat = @"yyyy-MM-dd";
//    NSDate *dte = [formater dateFromString:@"2016-03-22"];
//    
    //NSLog(@"---%d%d%d%@",[dte isToday],[dte isYesterday],[dte isThisYear],[dte gapToNow]);
    
    NSDictionary *dict = @{@"ap":@"charles",@"age":@12,@"arr":@[@"1",@"2"],@"dic":@{@"small":@"hehe"}};
    
    [NSObject autoPropertyWithDict:dict];
    // Do any additional setup after loading the view, typically from a nib.
}
-(UIImage*) circleImage:(UIImage*) image withParam:(CGFloat) inset {
    UIGraphicsBeginImageContext(image.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [UIColor clearColor].CGColor);
    CGRect rect = CGRectMake(inset, inset, image.size.width - inset * 2.0f, image.size.height - inset * 2.0f);
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    
    [image drawInRect:rect];
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    UIImage *newimg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return  newimg;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
