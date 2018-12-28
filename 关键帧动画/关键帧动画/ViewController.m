//
//  ViewController.m
//  关键帧动画
//
//  Created by stu1 on 2018/12/26.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *leaf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    //(90,140)->(110,182)->(120,202)->(130,222)->(140,242)->(150,262)->(160,282)->(200,342)->(240,400)->(280,500)->(357,707)
    
    [UIView animateKeyframesWithDuration:6.0 delay:0 options:UIViewKeyframeAnimationOptionCalculationModePaced animations:^{
        
        
        
        //relativeDuration 填写的是系数，真正执行的时间是系数*总时间，比如0.1  持续时间就是6*0.1
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(110, 182);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.1 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(110, 182);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.2 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(120, 202);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.3 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(130, 222);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.4 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(140, 242);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(150, 262);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.6 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(200, 342);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.7 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(240, 400);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.8 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(280, 500);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.9 relativeDuration:0.1 animations:^{
            self.leaf.center = CGPointMake(357, CGRectGetMaxY(self.view.frame) - 7);
            self.leaf.transform = CGAffineTransformMakeRotation(M_PI_4);
        }];
        
    } completion:nil];
    
    
    
    
    
    
    
}

@end
