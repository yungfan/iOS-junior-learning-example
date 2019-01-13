//
//  DBHelper.h
//  Sqlite数据存储
//
//  Created by stu1 on 2018/12/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <sqlite3.h>


NS_ASSUME_NONNULL_BEGIN

//工具类
@interface DBHelper : NSObject

- (void)createDB;

- (void)createTab;

- (void)insertPerson:(Person *)person;

- (void)updatePerson:(Person *)person;

- (NSArray<Person *> *)queryPerson:(NSString *) name;

- (void)deletePerson:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
