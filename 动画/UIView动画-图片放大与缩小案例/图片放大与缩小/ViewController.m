//
//  ViewController.m
//  图片放大与缩小
//
//  Created by stu1 on 2019/1/7.
//  Copyright © 2019年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) UIButton *middleImageBtn;
//记录蒙板
@property (nonatomic,weak) UIButton *coverBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加按钮
    [self addBtn];
}

-(void)addBtn{
    
    UIButton *middleImageBtn = [[UIButton alloc]init];
    
    [middleImageBtn setImage:[UIImage imageNamed:@"people_liudehua"] forState:UIControlStateNormal];
    
    middleImageBtn.frame=CGRectMake(0, 0, 80, 88);
    
    middleImageBtn.center = self.view.center;
    
    //按钮的点击事件
    [middleImageBtn addTarget:self action:@selector(middleImageBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:middleImageBtn];
    
    self.middleImageBtn = middleImageBtn;
    
}


- (void)middleImageBtnClick:(id)sender {
    
    //判断什么时候放大 什么时候缩小
    //如果有蒙板 图片缩小
    //如果没有蒙版图片是放大的
    if (self.coverBtn==nil) {
        
        //创建蒙版
        UIButton *coverBtn = [[UIButton alloc]init];
        //位置大小====屏幕大小一致
        coverBtn.frame = self.view.bounds;
        //背景色
        coverBtn.backgroundColor = [UIColor blackColor];
        //改变透明度
        coverBtn.alpha=0;
        //添加到屏幕上 addsubview
        [self.view addSubview:coverBtn];
        //需要将蒙版和图片调换顺序 新方法
        [self.view bringSubviewToFront:self.middleImageBtn];
        
        //UIView动画调整图片大小和蒙版透明度
        [UIView animateWithDuration:0.5 animations:^{
            
            coverBtn.alpha = 0.5;
            
            CGFloat width =[UIScreen mainScreen].bounds.size.width;
            
            CGFloat height = [UIScreen mainScreen].bounds.size.height;
            
            CGFloat imageW = width;
            
            CGFloat imageH = imageW * self.middleImageBtn.frame.size.height / self.middleImageBtn.frame.size.width;
            
            CGFloat imageX = 0;
            
            CGFloat imageY = (height - imageH) * 0.5;
            
            self.middleImageBtn.frame=CGRectMake(imageX, imageY, imageW, imageH);
        }];
        
        //监听蒙版的点击
        [coverBtn addTarget:self action:@selector(coverBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        //关联蒙版
        self.coverBtn=coverBtn;
        
    }else{
        
        [self coverBtnClick];
    }
    
}

#pragma mark - 监听蒙板的点击
-(void)coverBtnClick{
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.middleImageBtn.frame=CGRectMake(0, 0, 80, 88);
        
        self.middleImageBtn.center = self.view.center;
        
        self.coverBtn.alpha = 0;
        
    }completion:^(BOOL finished) {
        
        [self.coverBtn removeFromSuperview];
        
    }];
}

@end
