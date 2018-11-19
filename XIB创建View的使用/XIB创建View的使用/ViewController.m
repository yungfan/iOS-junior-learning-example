//
//  ViewController.m
//  XIB创建View的使用
//
//  Created by stu1 on 2018/11/16.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "CommonView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CommonView *view = [CommonView commonView];
    
    //真正显示的大小
    view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300);
    
    [self.view addSubview:view];
}


@end
