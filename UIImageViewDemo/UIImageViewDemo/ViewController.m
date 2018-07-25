//
//  ViewController.m
//  UIImageViewDemo
//
//  Created by teacher on 16/9/14.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 60, 60)];
    
    
    
    UIImage *img = [UIImage imageNamed:@"fart"];
    
    imgView.image = img;
    
    
    [self.view addSubview:imgView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
