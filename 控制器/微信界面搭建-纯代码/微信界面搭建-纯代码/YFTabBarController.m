//
//  YFTabBarController.m
//  微信界面搭建-纯代码
//
//  Created by stu1 on 2018/12/3.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "YFTabBarController.h"


@interface YFTabBarController ()

@end

@implementation YFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addNavigationChildVC:@"WechatViewController" :@"微信" :@"tabbar_mainframe" :@"tabbar_mainframeHL"];
    
    
    [self addNavigationChildVC:@"ContactViewController" :@"联系人" :@"tabbar_contacts" :@"tabbar_contactsHL"];
    
    [self addNavigationChildVC:@"FoundViewController" :@"发现" :@"tabbar_discover" :@"tabbar_discoverHL"];

    [self addNavigationChildVC:@"MineViewController" :@"我" :@"tabbar_me" :@"tabbar_meHL"];
    
}

-(void)addNavigationChildVC: (NSString *) vcName :(NSString *)title :(NSString *)nomalImageName :(NSString *)selectedImageName {
    
    
    //1.创建控制器
    Class class = NSClassFromString(vcName);
    UIViewController *vc = [[class alloc]init];
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:nomalImageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];    
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName :  [UIColor colorWithRed:84/255.0 green:170/255.0 blue:56/255.0 alpha:1.0]} forState:UIControlStateHighlighted];
    
    //2.嵌套到导航控制器
    UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:vc];
    nvc.navigationBar.barTintColor = [UIColor colorWithRed:37/255.0 green:37/255.0 blue:37/255.0 alpha:1.0];
    nvc.navigationBar.tintColor = [UIColor whiteColor];
    [nvc.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];

    //3.导航控制器添加到标签栏控制器
    [self addChildViewController:nvc];
    
}


@end
