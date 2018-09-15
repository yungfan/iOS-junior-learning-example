//
//  ViewController.m
//  UIView讲解
//
//  Created by teacher on 16/9/18.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//UIView加载完毕时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    //UIViewController里面的那个view默认是跟手机屏幕一样大
    //addSubview有着严格的顺序 谁先添加就在下面 后添加的在上面

    self.view.backgroundColor = [UIColor greenColor];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));

    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    blueView.backgroundColor = [UIColor blueColor];
    //blueView.center = self.view.center;
    //[self.view addSubview:blueView];
    
    //通过这种insert的方式可以控制添加的UIView处于什么位置
    [self.view insertSubview:blueView belowSubview:redView];
    
    
    //两个属性
    NSLog(@"%@", blueView.superview);
    NSLog(@"%@", redView.superview);
  
    NSLog(@"%@", self.view.subviews);
}


-(void)viewDidLayoutSubviews
{
    
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");

}


//view显示出来的时候调用
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
