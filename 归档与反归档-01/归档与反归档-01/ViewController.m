//
//  ViewController.m
//  归档与反归档-01
//
//  Created by teacher on 16/11/29.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)guidang:(id)sender;

- (IBAction)fanguidang:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//对象 ——> 文件
- (IBAction)guidang:(id)sender {
    
    NSArray *array = @[@"Anhui", @"Jiangsu", @"Zhejiang", @"Shandong"];
    
    
    //如果数据需要传递到服务器
    //NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array];
    
    [NSKeyedArchiver archiveRootObject:array toFile:@"/Users/teacher/Desktop/array.txt"];
    
    
    
}

//文件 ——> 对象
- (IBAction)fanguidang:(id)sender {
    
    
   //如果是从网络获取归档数据
   // [NSKeyedUnarchiver unarchiveObjectWithData:<#(NSData *)#>];
    
    
   NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/teacher/Desktop/array.txt"];
    
   NSLog(@"%@", array);
    
}
@end
