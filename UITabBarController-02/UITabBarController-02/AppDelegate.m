//
//  AppDelegate.m
//  UITabBarController-02
//
//  Created by teacher on 16/11/15.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "AppDelegate.h"
#import "FViewController.h"
#import "SViewController.h"
#import "TViewController.h"
#import "NViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    
    UITabBarController *tabController = [[UITabBarController alloc]init];
    tabController.tabBar.tintColor = [UIColor colorWithRed:15/255.0 green:183/255.0 blue:158/255.0 alpha:1.0];
    
    
    FViewController *f = [[FViewController alloc]init];
    f.tabBarItem.title = @"红色";
    f.tabBarItem.image = [UIImage imageNamed:@"htl_icon_sleep_gray"];
    f.tabBarItem.selectedImage = [UIImage imageNamed:@"htl_icon_sleep_green"];
    f.tabBarItem.badgeValue = @"1";
    
    //控制器的view是懒加载的
    SViewController *s = [[SViewController alloc]init];
    s.view.backgroundColor = [UIColor orangeColor];
    
    
    TViewController *t = [[TViewController alloc]init];
    t.view.backgroundColor = [UIColor purpleColor];
    
    
    NViewController *n = [[NViewController alloc]init];
    n.view.backgroundColor = [UIColor blueColor];

    
    
    //这里数组的顺序就决定了最终显示的顺序
    tabController.viewControllers = @[f, s, t, n];
    
    tabController.delegate = self;
    
    
    self.window.rootViewController = tabController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


//参数：tabBarController：你点击的那个UITabBarController      viewController：你点击的是那个ViewController
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    viewController.view.backgroundColor = [UIColor blackColor];

    viewController.tabBarItem.badgeValue = nil;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
