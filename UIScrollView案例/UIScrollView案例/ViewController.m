//
//  ViewController.m
//  UIScrollView案例
//
//  Created by stu1 on 2018/10/15.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)scrollLittle:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *city = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"city.jpeg"]];
    
    //contentSize 决定了滚动视图内容的大小，如果这个内容超过了屏幕的大小，就可以滚动；如果比屏幕小，则不滚动。宽度决定水平滚动，高度决定垂直滚动。如果某个方向不需要滚动，则对应的尺寸可以设置为0
    self.scrollView.contentSize = CGSizeMake(1920, 1080);
    
    
    //contentInset设置内容的内边距
    self.scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    
    
    [self.scrollView addSubview:city];

    
    
}


- (IBAction)scrollLittle:(id)sender {
    
    
    //ContentOffset 设置手机屏幕可视的滚动区域
    //先获取目前的ContentOffset
    CGPoint preContentOffset = self.scrollView.contentOffset;
    
    //加一点点
    CGPoint contentOffset =  CGPointMake(preContentOffset.x + 10, preContentOffset.y + 10);
    
    //重新设置ContentOffset
    [self.scrollView setContentOffset:contentOffset animated:YES];
}
@end
