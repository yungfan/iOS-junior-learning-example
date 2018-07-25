//
//  FirstViewController.m
//  
//
//  Created by teacher on 16/9/8.
//
//  UIView是看得见的界面   UIViewController存在的意义？UIViewController（视图控制器）专门用来管理UIView（生老病死-->生命周期）一个UIViewController对应一个iOS中的界面，它里面有很多的UIView控件（按钮、输入框、图片、表格、滚动视图...第二章里面的东西）一个UIViewController 默认有一个view属性，这个view就是你放在上面的控件的父控件，在SB中设置背景色其实就是给这个view属性设置了一个背景色而已

// 要想把一个界面和一个类关连起来 1、必须保证你的类是一个UIViewController的子类  2、设置界面中选择它的类为当前的UIViewController
// 关连起来以后，可以更改当前界面上所有的东西

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


// 当程序运行起来的时候 那个启动的UIViewController 加载完毕的时候会调用该方法
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"FirstViewController 加载完毕");
    
    self.view.backgroundColor = [UIColor blueColor];
    
    
    //一个控件明明添加到父控件中了 为什么不显示？因为没有尺寸
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(1, 1, 200, 100)];
    label.text = @"电子信息工程系";
    
    //任何程序中创建的控件 一定要添加到一个父控件中
    [self.view addSubview:label];
    
    self.schoolName.text = @"张三";
    self.zhangsan.text  = @"lisi";
    
//    NSLog(@"%f, %f", self.schoolName.bounds.origin.x, self.schoolName.bounds.origin.y);
//    
//    NSLog(@"%f, %f", self.schoolName.frame.origin.x, self.schoolName.frame.origin.y);
//    
//    NSLog(@"%f, %f", self.schoolName.bounds.size.width, self.schoolName.bounds.size.height);
//    
//    NSLog(@"%f, %f", self.schoolName.frame.size.width, self.schoolName.frame.size.height);
    
    NSLog(@"%@", NSStringFromCGRect(self.schoolName.frame));
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));
    
    
    label.textAlignment = NSTextAlignmentCenter;
    
    label.center  = self.view.center;
    
//    NSLog(@"%f, %f", self.schoolName.center.x, self.schoolName.center.y);
//    
//    NSLog(@"%f, %f", self.view.center.x, self.view.center.y);
    
    NSLog(@"%@", NSStringFromCGPoint(self.schoolName.center));
    NSLog(@"%@", NSStringFromCGPoint(self.view.center));
    
    label.textColor = [UIColor redColor];
    label.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    //[label removeFromSuperview];

}

@end
