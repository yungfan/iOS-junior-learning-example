//
//  ViewController.m
//  loadView的使用
//
//  Created by stu1 on 2018/11/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView{
    
    //不需要调用[super loadView];
    
    //必须在这里设置控制器的View
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    NSLog(@"loadView");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //为什么调用self.view会陷入死循环 因为这时候self.view就会立马调用loadView
    self.view.backgroundColor = [UIColor blueColor];

    
    NSLog(@"viewDidLoad");
}


@end
