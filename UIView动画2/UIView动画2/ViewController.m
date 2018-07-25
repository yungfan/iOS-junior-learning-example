//
//  ViewController.m
//  UIView动画2
//
//  Created by teacher on 16/12/19.
//  Copyright © 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    
    //设置显示时间
    [SVProgressHUD setMinimumDismissTimeInterval:1.0];
    //设置错误提示文字
    [SVProgressHUD showErrorWithStatus:@"用户名不能为空"];
    
    //+ (void)showInfoWithStatus:(NSString*)string;
    //+ (void)showSuccessWithStatus:(NSString*)string;
    //+ (void)showErrorWithStatus:(NSString*)string;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)viewDidAppear: (BOOL)animated
{
    [super viewDidAppear: animated];
    
    [UIView animateWithDuration:2.0 animations:^{
        
        self.username.center = CGPointMake(self.view.center.x, self.username.center.y);
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:2.0 animations:^{
            
            self.password.center = CGPointMake(self.view.center.x, self.password.center.y);
            
        } completion:^(BOOL finished) {
            
//            [UIView animateWithDuration:2.0 animations:^{
//                
//                self.btn.center = self.view.center;
//                
//            } completion:nil];
            
            
            [UIView animateWithDuration:2.0 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:0 options:UIViewAnimationOptionTransitionNone animations:^{
                 self.btn.center = self.view.center;
            } completion:nil];
        }];
        
    }];

}

@end
