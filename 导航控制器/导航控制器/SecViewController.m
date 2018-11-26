//
//  SecViewController.m
//  导航控制器
//
//  Created by stu1 on 2018/11/23.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏标题
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
    
    
   // [self dismissViewControllerAnimated:YES completion:nil];
    
     //利用导航控制器完成跳转
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
