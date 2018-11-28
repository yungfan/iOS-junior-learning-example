//
//  ViewController.m
//  TabBar的使用
//
//  Created by stu1 on 2018/11/28.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITabBarDelegate>

@property (weak, nonatomic) IBOutlet UITabBar *tabBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%ld",self.tabBar.items.count);
    
    UITabBarItem *selectItem = self.tabBar.items[0];
    
    selectItem.badgeValue = @"100";
    
    self.tabBar.selectedItem = selectItem;
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    NSLog(@"点击的是%@", item.title);
    
    //清除角标
    item.badgeValue = nil;
    
}


@end
