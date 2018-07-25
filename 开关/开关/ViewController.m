//
//  ViewController.m
//  开关
//
//  Created by teacher on 16/9/20.
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

- (IBAction)changeLight:(id)sender {
    
    if([sender isOn])
    {
       //将亮的灯泡放到UIImageView上
        self.light.image = [UIImage imageNamed:@"light"];
    }
    
    else
    {
        //将不亮的灯泡放到UIImageView上
        self.light.image = [UIImage imageNamed:@"nomal"];
    }
    
    
}
@end
