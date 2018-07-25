//
//  ViewController.m
//  UIScrollViewDemo
//
//  Created by teacher on 16/10/11.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.contentSize 决定了滚动视图内容的大小，如果这个内容超过了屏幕的大小，就可以滚动；如果比屏幕小，则不滚动。宽度决定水平滚动，高度决定垂直滚动。如果某个方向不需要滚动，则对应的尺寸可以设置为0
    self.scrollView.contentSize = CGSizeMake(1186, 0);
    
    //2.四个方向的留白（逆时针方向）
    //self.scrollView.contentInset = UIEdgeInsetsMake(0, 20, 0, 20);
    
    //3.（x,y）
    
    self.scrollView.contentOffset = CGPointMake(600, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
