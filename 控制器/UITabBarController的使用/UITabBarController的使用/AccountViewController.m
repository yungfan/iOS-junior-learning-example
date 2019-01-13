//
//  AccountViewController.m
//  UITabBarController的使用
//
//  Created by stu1 on 2018/11/30.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "AccountViewController.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tabBarItem.title = @"联系人";
    
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:84/255.0 green:170/255.0 blue:56/255.0 alpha:1.0];
    
    self.view.backgroundColor = [UIColor redColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
