//
//  ViewController.m
//  UISegmentControl 分断
//
//  Created by teacher on 16/9/21.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeFlower:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0) {
        
         self.flowerImg.image = [UIImage imageNamed:@"yellow"];
        
    }else if (sender.selectedSegmentIndex == 1){
         self.flowerImg.image = [UIImage imageNamed:@"red"];
        
    }
    else if (sender.selectedSegmentIndex == 2) {
         self.flowerImg.image = [UIImage imageNamed:@"purple"];
    }
}
@end
