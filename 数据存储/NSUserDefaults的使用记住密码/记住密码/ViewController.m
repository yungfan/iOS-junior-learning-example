//
//  ViewController.m
//  记住密码
//
//  Created by teacher on 16/11/29.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//


//记住密码其实就是将用户名和密码一起存到一个文档中，当再次打开程序的时候去找一下看有没有这样的文件数据，如果有拿出来天冲到界面相应的位置
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;//用户名
@property (weak, nonatomic) IBOutlet UITextField *password;//密码
@property (weak, nonatomic) IBOutlet UISwitch *remember;//记住密码开关

@property(strong, nonatomic) NSUserDefaults * userDefaults;

- (IBAction)login:(id)sender;

@end

@implementation ViewController


-(NSUserDefaults *)userDefaults{
    
    if (_userDefaults == nil) {
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return _userDefaults;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUsernameAndPwd];

}

#pragma mark - 读取用户名和密码
-(void)setUsernameAndPwd{

    //1、懒加载NSUserDefaults, 调用NSUserDefaults的valueForKey:读取存储的数据
    NSString *uname = [self.userDefaults valueForKey:@"uname"];
    NSString *pwd = [self.userDefaults valueForKey:@"pwd"];
    NSString *isRemember = [self.userDefaults valueForKey:@"isRemember"];
    
    
    //2、根据需求处理读出来的数据
    if ([isRemember isEqualToString:@"1"]) {
        [self.remember setOn:YES animated:NO];
    }
    self.username.text = uname;
    self.password.text = pwd;
}


#pragma mark - 点击登录按钮，记住密码
- (IBAction)login:(id)sender {
    
    //获取用户输入的用户名
    NSString *uname = self.username.text;
    //获取用户输入的密码
    NSString *pwd = self.password.text;
    //获取记住密码开关的状态
    BOOL isRemember = [self.remember isOn];
    
    
    //记住密码
    if (isRemember) {
        
        //1、懒加载NSUserDefaults，调用NSUserDefaults的setObject: forKey:来设置数据
        [self.userDefaults setObject:uname forKey:@"uname"];
        [self.userDefaults setObject:pwd forKey:@"pwd"];
        [self.userDefaults setObject:@"1" forKey:@"isRemember"];
        
        
        //2、调用synchronize方法保存用户名和密码
        [self.userDefaults synchronize];
        
    }
    //没有记住
    else{
        
        //调用NSUserDefaults的removeObjectForKey:移除保存的用户名和密码
        [self.userDefaults removeObjectForKey:@"uname"];
        [self.userDefaults removeObjectForKey:@"pwd"];
        [self.userDefaults removeObjectForKey:@"isRemember"];
        
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
   
    [self.view endEditing:YES];

}
@end
