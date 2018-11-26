//
//  FourViewController.m
//  代码使用导航控制器
//
//  Created by stu1 on 2018/11/26.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"详情";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //pop有三个 1.返回上一个控制器 2.返回根控制器 3.返回指定控制器
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
