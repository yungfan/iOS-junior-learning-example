//
//  SecViewController.h
//  控制器逆向传值
//
//  Created by stu1 on 2018/11/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol passValueProtocol <NSObject>

-(void)passValue:(NSString *)info;

@end

@interface SecViewController : UIViewController

@property(nonatomic, assign) id<passValueProtocol> delegate;

@end

NS_ASSUME_NONNULL_END
