//
//  ViewController.m
//  UIView介绍
//
//  Created by stu1 on 2018/9/14.
//  Copyright © 2018年 abc. All rights reserved.
//  起始坐标   大小

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *greenV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    //UIViewController里面的那个view默认是跟手机屏幕一样大
    //addSubview有着严格的顺序 谁先添加就在下面 后添加的在上面
    
    UIView *greenView = [[UIView alloc]init];
    
    greenView.backgroundColor = [UIColor greenColor];
    
    //frame-CGRect
    //起始坐标CGPoint
    //CGPoint origin = CGPointMake(0, 0);
    //大小CGSize
    // CGSize size = CGSizeMake(100, 100);
    
    //bounds-CGRect
    //    greenView.frame = CGRectMake(100, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    //greenView.frame = CGRectMake(origin.x, origin.y, size.width, size.height);
    
    greenView.frame = CGRectMake(0, 0, 100, 100);

    
    //center-CGPoint
    //greenView.center = self.view.center;
    
    
    //addSubview与removeFromSuperview
    //[self.view addSubview:greenView];
    
    //viewWithTag
    UIView *orangeView = [self.view viewWithTag:101];
    
    [orangeView addSubview:greenView];
   
    
    //参考系已经由self.view 改为 orangeView
    //greenView.center = orangeView.center;
    
    greenView.center = CGPointMake(orangeView.bounds.size.width * 0.5, orangeView.bounds.size.height *  0.5);
    
    _greenV = greenView;
}



//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    
//    [_greenV removeFromSuperview];
//}


//view显示出来的时候调用
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
    
}
@end
