//
//  ViewController.m
//  UIView动画
//
//  Created by teacher on 16/12/14.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIImage *img = [UIImage imageNamed:@"leaf"];
    
    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 42, 38)];
    
    self.imgView.image = img;
    
    
    [self.view addSubview:self.imgView];
    
}

/**
 *  触摸屏幕的时候调用
 *
 *  @param touches <#touches description#>
 *  @param event   <#event description#>
 */
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    
   UITouch *touch =  [touches anyObject];
    
   CGPoint point =  [touch locationInView:self.view];
    
    
   //UIView动画基本框架 第一种Block方式
//   [UIView animateWithDuration:3.0 animations:^{
//       
//       //动画要执行的动作
//       self.imgView.center = point;
//       
//   }];
    
    
    //第二种
    [UIView beginAnimations:@"abc" context:nil];
    [UIView setAnimationDuration:1.0];
    self.imgView.center = point;
    [UIView commitAnimations];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
