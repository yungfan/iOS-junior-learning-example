//
//  ViewController.m
//  VFL
//
//  Created by 杨帆 on 2019/1/11.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //添加UIView
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = UIColor.redColor;
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor = UIColor.blueColor;
    [self.view addSubview:redView];
    [self.view addSubview:blueView];
    
    //Autoresizing关闭
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    
    //使用VFL语言生成约束
    NSDictionary *metrics = @{@"margin":@10,@"height":@50, @"bottomMagtin":@50};

    NSDictionary *views = NSDictionaryOfVariableBindings(redView, blueView);
    
    //获取redView、blueView水平方向上的约束
    NSArray *h = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[redView]-margin-[blueView(==redView)]-margin-|" options:NSLayoutFormatDirectionMask metrics:metrics views:views];
    
    //获取redView竖直方向的约束
    NSArray *v1 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-bottomMagtin-[redView(height)]" options:NSLayoutFormatDirectionMask metrics:metrics views:views];
    
    //获取blueView竖直方向上的约束
    NSArray *v2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-bottomMagtin-[blueView(==redView)]" options:NSLayoutFormatDirectionMask metrics:metrics views:views];
    
    
    //在父视图上添加VFL语言生成的约束
    [self.view addConstraints:h];
    [self.view addConstraints:v1];
    [self.view addConstraints:v2];
    
}


@end
