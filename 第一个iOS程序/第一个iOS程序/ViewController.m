//
//  ViewController.m
//  第一个iOS程序
//
//  Created by stu1 on 2018/9/10.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"


//  UIView是看得见的界面   UIViewController存在的意义？UIViewController（视图控制器）专门用来管理UIView（生老病死-->生命周期）一个UIViewController对应一个iOS中的界面，它里面有很多的UIView控件（按钮、输入框、图片、表格、滚动视图...第二章里面的东西）一个UIViewController 默认有一个view属性，这个view就是你放在上面的控件的父控件，在SB中设置背景色其实就是给这个view属性设置了一个背景色而已

// 要想把一个界面和一个类关连起来 1、必须保证你的类是一个UIViewController的子类  2、设置界面中选择它的类为当前的UIViewController
// 关连起来以后，可以更改当前界面上所有的东西

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtUser;
@property (weak, nonatomic) IBOutlet UITextField *txtPwd;


@end

@implementation ViewController

// 当程序运行起来的时候 那个启动的UIViewController 加载完毕的时候会调用该方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%s", __func__);
    
    self.view.backgroundColor = [UIColor redColor];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));   //1125*2436
    
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 500, 100, 100)];
    view.backgroundColor = [UIColor greenColor];
    
    
    [self.view addSubview:view];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
      NSLog(@"%s", __func__);
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
      NSLog(@"%s", __func__);
}

-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
      NSLog(@"%s", __func__);
}

-(void)viewDidDisappear:(BOOL)animated{
    
    [super viewDidDisappear:animated];
      NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
    
    
    NSLog(@"%@ --- %@", self.txtUser.text, self.txtPwd.text) ;
    
}

@end
