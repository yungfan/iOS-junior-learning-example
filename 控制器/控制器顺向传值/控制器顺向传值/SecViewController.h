//
//  SecViewController.h
//  控制器顺向传值
//
//  Created by stu1 on 2018/11/19.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecViewController : UIViewController

//2.在目标控制器的.h文件中声明一个接受的属性
@property (nonatomic,copy) NSString *value;

@end

NS_ASSUME_NONNULL_END
