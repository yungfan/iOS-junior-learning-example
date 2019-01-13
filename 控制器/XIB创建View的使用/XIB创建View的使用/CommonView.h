//
//  CommonView.h
//  XIB创建View的使用
//
//  Created by stu1 on 2018/11/16.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonView : UIView

- (IBAction)changed:(id)sender;
// 提供一个类方法 初始化XIB为UIView
+(CommonView *)commonView;

@end

NS_ASSUME_NONNULL_END
