//
//  ViewController.m
//  MVC
//
//  Created by stu1 on 2018/9/17.
//  Copyright © 2018年 abc. All rights reserved.
//  MVC: 设计模式、架构
//  M: Model -- Class:NSObject
//  V:View -- Class:UIView
//  C:Controller -- Class:UIViewController

// UITableView、UICollectionView

#import "ViewController.h"

@interface ViewController ()

//建立View到Controller的关联  Outlet Action
//简历联系以后，就可以在Controller中修改View的状态，让界面能够 "动" 起来
//Outlet : 属性关联（SB中所有的控件都可以建立关联）
//Action : 事件绑定（SBb中并不是所有的控件都可以建立事件绑定）Target Action
@property (nonatomic, weak) IBOutlet UILabel *lbName;

//Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<ViewController 0x7ff844408210> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key tfName.'
//找不到tfName属性，原因是因为你在ViewController里面修改了Outlet的属性名
//如何解决？1.恢复之前的名字 2.找到SB中最右侧的那个剪头按钮，删除之前的关联，重新关联一次
@property (weak, nonatomic) IBOutlet UITextField *tfName;


//Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[ViewController click:]: unrecognized selector sent to instance 0x7f843860c650'
//找不到click方法，原因是因为你在ViewController里面修改了Action的方法名
//如何解决？1.恢复之前的名字 2.找到SB中最右侧的那个剪头按钮，删除之前的关联，重新关联一次
- (IBAction)click:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)click:(id)sender {
    
    self.lbName.text = @"Click Me";
}
@end
