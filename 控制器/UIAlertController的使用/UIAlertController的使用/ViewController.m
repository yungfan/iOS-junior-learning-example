//
//  ViewController.m
//  UIAlertController的使用
//
//  Created by stu1 on 2018/11/19.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showAlert:(id)sender;

- (IBAction)showSheet:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showAlert:(id)sender {
    
    //创建控制器
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"这是一个对话框，提示信息。" preferredStyle:UIAlertControllerStyleAlert];
    
    //添加行为
    UIAlertAction *actionOne = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDestructive) handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"点击了确定按钮");
        
    }];
    
    UIAlertAction *actionTwo = [UIAlertAction actionWithTitle:@"取消" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"点击了取消按钮");
        
    }];
    
    [alert addAction:actionOne];
    
    [alert addAction:actionTwo];
    
    //弹出控制器
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)showSheet:(id)sender {

    
    //创建控制器
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"照片选择" message:@"请选择照片" preferredStyle:UIAlertControllerStyleActionSheet];
    
    //添加行为
    UIAlertAction *actionOne = [UIAlertAction actionWithTitle:@"相册" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"从相册去照片");
        
    }];
    
    UIAlertAction *actionTwo = [UIAlertAction actionWithTitle:@"相机" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"通过拍照获取照片");
        
    }];
    
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alert addAction:actionOne];
    
    [alert addAction:actionTwo];
    
    [alert addAction:actionCancel];
    
    //弹出控制器
    [self presentViewController:alert animated:YES completion:nil];
    
}
@end
