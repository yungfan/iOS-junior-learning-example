//
//  ViewController.m
//  沙盒
//
//  Created by teacher on 16/11/28.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //NSString *path =  NSHomeDirectory();
    //NSString *path = NSTemporaryDirectory();
    
    Library路径 NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);

    //Documents路径 NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSLog(@"%@",[path lastObject]);
    
    
    //在沙盒中的Documents文件夹下创建一个名为 abc.txt 文件，并且将"安徽商贸职业技术学院"写进文本中
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    path = [path stringByAppendingPathComponent:@"abc.txt"];
    
    //path = [path stringByAppendingString:@"/abc.txt"];
    
    NSLog(@"%@", path);
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    NSString *str = @"安徽商贸职业技术学院";
    
    //字符串转NSData
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    [manager createFileAtPath:path contents:data attributes:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
