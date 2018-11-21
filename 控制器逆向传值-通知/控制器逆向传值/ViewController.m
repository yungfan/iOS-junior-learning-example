//
//  ViewController.m
//  控制器逆向传值
//
//  Created by stu1 on 2018/11/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *infoLb;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1.监听通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getInfo:) name:@"passValue" object:nil];
    
}

//3.处理通知
-(void)getInfo:(NSNotification *)noti{
    
    self.infoLb.text =  noti.userInfo[@"info"];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    SecViewController *sec = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    
    [self presentViewController:sec animated:YES completion:nil];
    
    
}


@end
