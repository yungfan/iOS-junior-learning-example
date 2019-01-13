//
//  ViewController.m
//  控制器顺向传值
//
//  Created by stu1 on 2018/11/19.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()
- (IBAction)passValueToVC:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)passValueToVC:(id)sender {
    
    //1.初始化目标控制器
    SecViewController *secVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    //3.给制器的属性赋值
    secVC.value = @"这是第一个界面传过来的值";
    
    [self presentViewController:secVC animated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    [self performSegueWithIdentifier:@"abcd" sender:nil];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ThirdViewController *thirdVC = segue.destinationViewController;
    
    thirdVC.value = @"通过prepareForSegue传值";
    
}

@end
