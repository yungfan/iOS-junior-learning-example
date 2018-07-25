//
//  ViewController.m
//  UISlider滑块
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

- (IBAction)volumeChange:(UISlider*)sender {
    
    
    float value = sender.value;
    
    if (value <= 30) {
        self.volumeImg.image = [UIImage imageNamed:@"lower"];
        
    }
    else if( value <=70)
    {
        self.volumeImg.image = [UIImage imageNamed:@"middle"];
    
    }
    else
    {
        self.volumeImg.image = [UIImage imageNamed:@"high"];
    }
}
@end
