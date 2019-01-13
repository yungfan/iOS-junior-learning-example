//
//  Person.h
//  归档
//
//  Created by stu1 on 2018/12/12.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//针对不是系统自带的如NSString、NSArray、NSDictionary，需要自己实现NSSecureCoding进行编码与解码
@interface Person : NSObject<NSSecureCoding>

@property (nonatomic,copy) NSString *name;

@property (nonatomic,assign) int age;

@end

NS_ASSUME_NONNULL_END
