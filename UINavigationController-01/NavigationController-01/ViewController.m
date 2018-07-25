//
//  ViewController.m
//  NavigationController-01
//
//  Created by teacher on 16/11/9.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 20)];
    
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    
    //给按钮添加一个事件UIControlEventTouchUpInside，响应它的方法在self中，名字叫做btnClick:
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:button];
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:@"美食" style:UIBarButtonItemStylePlain target:self action:@selector(btnClick:)];
    
    UIImage *img = [[UIImage imageNamed:@"icon_mine_account_setting_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    
    UIBarButtonItem *settings = [[UIBarButtonItem alloc]initWithImage:img style:UIBarButtonItemStylePlain target:self action:@selector(btnClick:)];
    
    self.navigationItem.leftBarButtonItems = @[left, settings];
    
    UIBarButtonItem *bell = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"htl_icon_bell"] style:UIBarButtonItemStylePlain target:self action:@selector(btnClick:)];
    
    UIBarButtonItem *scan = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_navigationItem_scan"] style:UIBarButtonItemStylePlain target:self action:@selector(btnClick:)];
    
    self.navigationItem.rightBarButtonItems = @[bell, scan];
    
    
    //状态栏颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    
    //backBarButtonItem 根本不是在当前界面起效果的 在当前控制器push到下一个界面的时候起作用
    self.navigationItem.backBarButtonItem = bell;
    
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    
    //self.navigationItem.title = @"首页";
    
    //self.navigationItem.titleView = [UIButton buttonWithType:UIButtonTypeContactAdd];
  
}

//-(UIStatusBarStyle)preferredStatusBarStyle{
//
//    NSLog(@"%s", __func__);
//
//    return UIStatusBarStyleLightContent;
//}


//-(BOOL)prefersStatusBarHidden{
//
//    return YES;
//}

-(void)btnClick:(UIView *)btn{
    
    SecondViewController *second = [[SecondViewController alloc]init];
    
    //跳转
    [self.navigationController pushViewController:second animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
