//
//  SecViewController.h
//  控制器逆向传值
//
//  Created by stu1 on 2018/11/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef void (^PassValueBlock)(NSString *passedValue);

@interface SecViewController : UIViewController

@property(nonatomic, copy) PassValueBlock passValueBlock;

@end

NS_ASSUME_NONNULL_END
