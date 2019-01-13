//
//  ViewController.m
//  UILabel、UITextField、UIButton案例
//
//  Created by stu1 on 2018/9/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;
- (IBAction)regist:(id)sender;
- (IBAction)forget:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //[self.view endEditing:YES];
    
    [self.password resignFirstResponder];
    
}

- (IBAction)regist:(id)sender {
    
    NSLog(@"注册");
}
- (IBAction)forget:(id)sender {
    
    NSLog(@"忘记密码");
}
- (IBAction)login:(id)sender {
    
    NSString *inputPhone = self.phone.text;
    
    NSString *inputPassword = self.password.text;
    
    
    NSLog(@"%@ --- %@", inputPhone, inputPassword);
    
}
@end
