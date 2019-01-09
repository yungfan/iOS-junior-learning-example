//
//  ViewController.m
//  for循环创建九宫格
//
//  Created by stu1 on 2019/1/8.
//  Copyright © 2019年 abc. All rights reserved.
//

#import "ViewController.h"

#define COUNT 9

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createNineMenu];
}

-(void)createNineMenu{
    
    //循环创建按钮
    for (int i=0; i<COUNT; i++) {
        //创建按钮
        UIButton *btn=[[UIButton alloc]init];
        
        //设置背景色
        btn.backgroundColor = UIColor.redColor;
        
        //设置黑色的文字颜色 默认是白色的
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        //按钮的文字
        [btn setTitle:[NSString stringWithFormat:@"%d", i] forState:UIControlStateNormal];
        
        //间距
        CGFloat magin = 20.0;
        
        //屏幕的宽度
        CGFloat screenW = [UIScreen mainScreen].bounds.size.width;

        //总列数
        int column = 3;
        
        //按钮的宽度
        CGFloat btnW =  (screenW - 4*magin) / column;
        
        //按钮的高度
        CGFloat btnH = btnW;
        
        //列号
        int c = i % column;
        
        //行号
        int r = i / column;
        
        //x坐标与列有关
        CGFloat btnX = magin * (c+1) + btnW * c;
        
        //y坐标与行有关
        CGFloat btnY = magin * (r+1) + btnW * r;
       
        //设置frame
        btn.frame=CGRectMake(btnX, btnY, btnW, btnH);
        
        //设置tag
        btn.tag = i;
        
        //添加到view上
        [self.view addSubview:btn];
        
        //监听按钮
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)btnClick:(UIButton *)btn{
    
    switch (btn.tag) {
        case 0:
            
            NSLog(@"执行功能A");
            break;
        case 1:
            
            NSLog(@"执行功能B");
            break;
        case 2:
            
            NSLog(@"执行功能C");
            break;
        case 3:
            
            NSLog(@"执行功能D");
            break;
        case 4:
            
            NSLog(@"执行功能E");
            break;
        case 5:
            
            NSLog(@"执行功能F");
            break;
        case 6:
            
            NSLog(@"执行功能G");
            break;
        case 7:
            
            NSLog(@"执行功能H");
            break;
        case 8:
            
            NSLog(@"执行功能I");
            break;
            
            
        default:
            break;
    }
    
    
    
    
}


@end
