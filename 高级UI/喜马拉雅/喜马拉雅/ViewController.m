//
//  ViewController.m
//  喜马拉雅
//
//  Created by teacher on 16/10/12.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *lastBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat lastBtnY = CGRectGetMaxY(self.lastBtn.frame);
    
    self.scrollView.contentSize = CGSizeMake(0, lastBtnY + 20);
    
    self.scrollView.showsVerticalScrollIndicator = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
