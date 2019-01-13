//
//  Person.h
//  Sqlite数据存储
//
//  Created by stu1 on 2018/12/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *phone;
@property (nonatomic,copy) NSString *address;

-(instancetype)initWithName:(NSString *)name Phone:(NSString *)phone Address:(NSString *)address;

@end

NS_ASSUME_NONNULL_END
