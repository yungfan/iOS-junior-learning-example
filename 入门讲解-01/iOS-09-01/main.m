//
//  main.m
//  iOS-09-01
//
//  Created by teacher on 16/6/12.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"



//程序的入口   UIApplicationMain最后一个参数 是AppDelegate类 AppDelegate .h .m 这个函数运行以后，整个程序就交给代理来完成，程序对应的操作会映射到AppDelegate中的函数

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"UIApplicationMain");
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
