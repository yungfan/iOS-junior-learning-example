//
//  WeChat.h
//  自定义Cell-微信
//
//  Created by stu1 on 2018/11/5.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeChat : NSObject


//这四个属性是给Cell使用的
@property (copy, nonatomic)  NSString *picName;
@property (copy, nonatomic)  NSString *titleText;
@property (copy, nonatomic)  NSString *timeText;
@property (copy, nonatomic)  NSString *contentText;

-(instancetype)initWithPicName:(NSString *)picName titleText:(NSString *)titleText timeText:(NSString *)timeText contentText:(NSString *)contentText;

@end

NS_ASSUME_NONNULL_END
