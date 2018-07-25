//
//  ViewController.m
//  UIView动画3
//
//  Created by teacher on 16/12/20.
//  Copyright © 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *leaf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
 
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
//    [UIView animateWithDuration:5.0 animations:^{
//        
//        self.leaf.center = CGPointMake(360, 650);
//    }];
    
    
    //总时间是6s  后面的relativeDuration 是按比例乘以总时间 比如0.3  持续时间就是6*0.3
    [UIView animateKeyframesWithDuration:6 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeCubic animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(170, 200);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.1 relativeDuration:0.2 animations:^{
            self.leaf.center = CGPointMake(200, 260);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.3 relativeDuration:0.2 animations:^{
            self.leaf.center = CGPointMake(230, 360);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(260, 460);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.6 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(290, 560);
        }];

        [UIView addKeyframeWithRelativeStartTime:0.7 relativeDuration:0.3 animations:^{
            self.leaf.center = CGPointMake(360, 650);
        }];
        
        [UIView addKeyframeWithRelativeStartTime: 0 relativeDuration: 1 animations: ^{
            self.leaf.transform = CGAffineTransformMakeRotation(M_PI);
        }];
        
        
        
        
    } completion:nil];
    
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
