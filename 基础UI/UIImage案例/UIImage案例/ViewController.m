//
//  ViewController.m
//  UIImage案例
//
//  Created by stu1 on 2018/9/21.
//  Copyright © 2018年 abc. All rights reserved.
//  重点掌握 contentMode 属性的含义 clipToBounds

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (weak, nonatomic) IBOutlet UIImageView *yc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.yc.layer.cornerRadius = 35;
    self.yc.layer.masksToBounds = YES;
    self.yc.clipsToBounds = YES;
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    NSLog(@"%@", NSStringFromCGRect(self.imgView.frame) );
}


@end
