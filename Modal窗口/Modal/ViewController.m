//
//  ViewController.m
//  Modal
//
//  Created by teacher on 16/11/22.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)comment:(id)sender;

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

- (IBAction)comment:(id)sender {
    
    
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"login"];
    
    //将vc以modal的方式显示出来
    [self presentViewController:vc animated:YES completion:nil];
    
    
}
@end
