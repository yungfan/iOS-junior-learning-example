//
//  ViewController.m
//  UIButton
//
//  Created by teacher on 16/9/13.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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


//按钮按下 再弹起的时候触发
//该方法的参数就是触发 sender就是我们的按钮
- (IBAction)btnClicked:(id)sender {
    
    NSString *name = self.username.text;
    NSString *pwd = self.password.text;
    
    NSLog(@"用户输入的用户名为%@， 密码为%@", name, pwd);
    
//    [self.password resignFirstResponder];
    
    [self.view endEditing:YES];
    
    //sender强制转换成UIButton以后设置文本  正常情况下的文本
    [(UIButton *)sender setTitle:@"成功" forState:UIControlStateNormal];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];

}

@end
