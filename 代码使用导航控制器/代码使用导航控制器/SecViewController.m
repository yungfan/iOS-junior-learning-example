//
//  SecViewController.m
//  代码使用导航控制器
//
//  Created by stu1 on 2018/11/26.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "SecViewController.h"
#import "FourViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"列表";
    
    
   
    //用左边按钮覆盖返回按钮m，但是这样需要自己写返回上一个界面的实现
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftArrow"] style:UIBarButtonItemStylePlain target:self action:@selector(leftClick:)];
    
    self.navigationItem.leftBarButtonItem = left;
}

-(void)leftClick:(UIBarButtonItem *)left{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    FourViewController *fourVC = [[FourViewController alloc]init];
    
    [self.navigationController pushViewController:fourVC animated:YES];
    
}

@end
