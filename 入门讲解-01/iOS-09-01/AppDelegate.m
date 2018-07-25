//
//  AppDelegate.m
//  iOS-09-01
//
//  Created by teacher on 16/6/12.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



//正常情况下 程序运行起来以后 会回调didFinishLaunchingWithOptions这个方法
//此时会判断 如果程序有一个SB 并且SB是启动SB 那么会加载 SB中箭头指向的那个界面 默认创建的项目中只有一个界面 并且这个界面对应的类也是Xcode给我们创建的好的 即ViewController.h .m
//如果没有启动SB 需要在该方法中通过代码的形式来动态添加需要现实的界面
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSLog(@"didFinishLaunchingWithOptions");
    

    
//    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    
//    ViewController *vc = [[ViewController alloc]init];
//    vc.view.backgroundColor = [UIColor greenColor];
//    self.window.rootViewController = vc;
//    
//    [self.window makeKeyAndVisible];
    
    
    return YES;
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



/**
 1，启动但还没进入状态保存 ：
 - (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 
 2，基本完成程序准备开始运行：
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions3，
 当应用程序将要入非活动状态执行，应用程序不接收消息或事件，比如来电话了：
 - (void)applicationWillResignActive:(UIApplication *)application
 
 4，当应用程序入活动状态执行，这个刚好跟上面那个方法相反：
 - (void)applicationDidBecomeActive:(UIApplication *)application
 
 5，当程序被推送到后台的时候调用。所以要设置后台继续运行，则在这个函数里面设置即可：
 - (void)applicationDidEnterBackground:(UIApplication *)application
 
 6，当程序从后台将要重新回到前台时候调用，这个刚好跟上面的那个方法相反：
 - (void)applicationWillEnterForeground:(UIApplication *)application
 
 7，当程序将要退出是被调用，通常是用来保存数据和一些退出前的清理工作：
 - (void)applicationWillTerminate:(UIApplication *)application
 
 */

@end
