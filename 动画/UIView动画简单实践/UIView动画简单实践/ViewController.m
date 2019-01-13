//
//  ViewController.m
//  UIView动画简单实践
//
//  Created by stu1 on 2018/12/24.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;

@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    [self animate];
    
}

-(void)animate{
    
    [UIView animateWithDuration:2.0 animations:^{
        
        self.username.center = CGPointMake(self.view.center.x, self.username.center.y);
       
        
    } completion:^(BOOL finished) {
        
        
        [UIView animateWithDuration:2.0 animations:^{
             self.password.center = CGPointMake(self.view.center.x, self.password.center.y);
        } completion:^(BOOL finished) {
            
            [UIView animateWithDuration:3.0 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:2 options:UIViewAnimationOptionCurveLinear animations:^{
                
                self.loginBtn.center = CGPointMake(self.loginBtn.center.x, self.view.center.y - 150);
                
            } completion:nil];
            
        }];

    }];
}


@end
