//
//  ViewController.m
//  导航控制器
//
//  Created by stu1 on 2018/11/23.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()
- (IBAction)moveToSecVC:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"我的";
}


- (IBAction)moveToSecVC:(id)sender {
    
    SecViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    //利用导航控制器完成跳转
    [self.navigationController pushViewController:vc animated:YES];
    
    
    
}
@end
