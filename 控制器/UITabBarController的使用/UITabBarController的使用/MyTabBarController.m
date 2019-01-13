//
//  MyTabBarController.m
//  UITabBarController的使用
//
//  Created by stu1 on 2018/11/30.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()<UITabBarControllerDelegate>

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    self.delegate = self;
}

//UITabBarController默认实现了UITabBarDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    NSLog(@"%s", __func__);
    item.badgeValue = nil;
}

//这个是UITabBarControllerDelegate中的方法
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    NSLog(@"%s", __func__);
    //viewController.tabBarItem.badgeValue = nil;

    
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
