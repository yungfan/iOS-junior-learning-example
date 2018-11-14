//
//  AppDelegate.m
//  视图控制器的创建
//
//  Created by stu1 on 2018/11/12.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "AppDelegate.h"
#import "TwoViewController.h"
#import "MyViewController.h"
#import "ViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //1.初始化window
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //2.创建ViewController
    
    //纯代码
    //MyViewController *myVC = [[MyViewController alloc]init];
    //myVC.view.backgroundColor = [UIColor blueColor];
    
    //XIB
    // TwoViewController *myVC = [[TwoViewController alloc]init];
    
    //StoryBoard
    //下面这种方式并不会加载StoryBoard中的VC 而是和纯代码方式一样
    //ViewController *myVC = [[ViewController alloc]init];
    //myVC.view.backgroundColor = [UIColor redColor];
    
    //找StoryBoard
    //UIStoryboard *sb =  [UIStoryboard storyboardWithName:@"Other" bundle:nil];
    
    //UIViewController *myVC = [sb instantiateViewControllerWithIdentifier:@"abc"];
    
    //UIViewController *myVC = [sb instantiateInitialViewController];
    
    //ThreeViewController *myVC = [[ThreeViewController alloc]init];
    
    FourViewController *myVC = [[FourViewController alloc]init];
    
    //将XIB初始化为一个UIView
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"CommonView" owner:myVC options:nil] firstObject];
    //手动赋值控制器的View
    myVC.view = view;
    
    myVC.view.backgroundColor = [UIColor cyanColor];
    
    
    //3.设置window的根控制器
    self.window.rootViewController = myVC;
    
    //4.显示window
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
