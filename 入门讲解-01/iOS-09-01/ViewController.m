//
//  ViewController.m
//  iOS-09-01
//
//  Created by teacher on 16/6/12.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//当界面加载完成以后 就会调用该函数
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jisuan:(id)sender {
    
    
    // 收起键盘
    [self.view endEditing:YES];
    
    NSString *num1 = self.num1.text;
    NSString *num2 = self.num2.text;
    NSLog(@"%@----%@", num1, num2);
    
    int result = [num1 intValue] + [num2 intValue];
    
    NSString *res = [[NSString alloc] initWithFormat:@"%d", result];
    
    [self.result setText:res];
    
    
}

@end
