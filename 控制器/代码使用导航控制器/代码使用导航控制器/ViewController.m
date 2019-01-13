//
//  ViewController.m
//  代码使用导航控制器
//
//  Created by stu1 on 2018/11/26.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    //1.设置标题
    self.navigationItem.title = @"首页";
    //2.设置左边按钮
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(leftClick:)];
    //3.设置右边按钮
     UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:@"右边" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    
    self.navigationItem.leftBarButtonItem = left;
    self.navigationItem.rightBarButtonItem = right;
    
    
    UIImageView *imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"service"]];
    
    //设置标题View 会覆盖文字
    self.navigationItem.titleView = imgView;
}

-(void)leftClick:(UIBarButtonItem *)left{
    
    SecViewController *secVC = [[SecViewController alloc]init];
    
    [self.navigationController pushViewController:secVC animated:YES];
    
}

-(void)rightClick:(UIBarButtonItem *)left{
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    
    [self.navigationController pushViewController:thirdVC animated:YES];
    
}

@end
