//
//  ViewController.m
//  转场动画
//
//  Created by stu1 on 2018/12/28.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *orangeView;

@property (strong, nonatomic) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self transitionAnimate3];
    
}

/*
 UIViewAnimationOptionTransitionNone            //无转场动画
 UIViewAnimationOptionTransitionFlipFromLeft    //转场从左翻转
 UIViewAnimationOptionTransitionFlipFromRight   //转场从右翻转
 UIViewAnimationOptionTransitionCurlUp          //上卷转场
 UIViewAnimationOptionTransitionCurlDown        //下卷转场
 UIViewAnimationOptionTransitionCrossDissolve   //转场交叉消失
 UIViewAnimationOptionTransitionFlipFromTop     //转场从上翻转
 UIViewAnimationOptionTransitionFlipFromBottom  //转场从下翻转
 */


//模拟界面切换
-(void)transitionAnimate3{
    
    [UIView transitionWithView:self.view duration:2.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        
        [self.greenView setHidden:YES];
    
        [self.orangeView setHidden:YES];
        
        self.btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        
        [self.btn addTarget:self action:@selector(transition) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:self.btn];
        
        self.btn.center = self.view.center;
        
        self.view.backgroundColor = [UIColor cyanColor];
        
        
    } completion:nil];
    
}

-(void)transition{
    
    [UIView transitionWithView:self.view duration:2.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        
        [self.greenView setHidden:NO];

        [self.orangeView setHidden:NO];
        
        [self.btn removeFromSuperview];
        
        self.view.backgroundColor = [UIColor whiteColor];
        
        
    } completion:nil];
    
}

//转场动画一
-(void)transitionAnimate{
    
    [UIView transitionWithView:self.greenView duration:2.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        
        UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        
        redView.backgroundColor = [UIColor redColor];
        
        [self.greenView addSubview:redView];
        
        //可以对自己做动画 
        //self.greenView.transform = CGAffineTransformMakeScale(0.5, 0.5);
        
        
    } completion:nil];
}

//转场动画二
-(void)transitionAnimate2{
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    redView.backgroundColor = [UIColor redColor];
    
    [UIView transitionFromView:self.greenView toView:redView duration:2.0 options:UIViewAnimationOptionTransitionFlipFromLeft completion:nil];
    
}

@end
