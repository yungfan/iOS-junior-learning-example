//
//  DBHelper.m
//  Sqlite数据存储
//
//  Created by stu1 on 2018/12/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "DBHelper.h"

@interface DBHelper() {
    
    sqlite3 *db;
}

@end

@implementation DBHelper

- (void)createDB{
    
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
    NSLog(@"%@", docPath);
    
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"person.db"];
    
    //sqlite3_open创建数据库
    int result = sqlite3_open([dbPath UTF8String] , &db);
    
    if (result == SQLITE_OK) {
        
        NSLog(@"创建数据库成功");
    }
    else{
        
        NSLog(@"创建数据库失败");
    }
    
}

- (void)createTab{
    
    //用之前一定要打开数据库
    [self createDB];
    
    NSString *sql = @"create table person(id integer primary key autoincrement, name text,  phone text, address text)";
    
    char *errmsg;
    
    //其中 sqlite* 表示打开的数据库； sql 为执行的sql语句；callback回调函数；void  *data为回调函数的第一个参数指向提供给回调函数的应用程序特定的数据，也是回调函数的第一个参数； errmsg 为错误信息，是指向错误消息字符串的指针 。
    int result = sqlite3_exec(db, [sql UTF8String], NULL, NULL, &errmsg);
    
    if (result == SQLITE_OK) {
        
        NSLog(@"创建表成功");
    }
    else{
        
        NSLog(@"创建表失败 %s", errmsg);
    }
    
    //用完关闭数据库
    sqlite3_close(db);
}

- (void)insertPerson:(Person *)person{
    
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"insert into person(name, phone, address) values ('%@', '%@', '%@')", person.name, person.phone, person.address];
    
    char *errmsg;
    
    int result = sqlite3_exec(db, [sql UTF8String], NULL, NULL, &errmsg);
    
    if (result == SQLITE_OK) {
        
        NSLog(@"插入数据成功");
    }
    else{
        
        NSLog(@"插入数据失败 %s", errmsg);
    }
    
    sqlite3_close(db);
}

- (void)updatePerson:(Person *)person{
    
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"update person set phone ='%@', address ='%@' where name = '%@'", person.phone, person.address, person.name];
    
    char *errmsg;
    
    int result = sqlite3_exec(db, [sql UTF8String], NULL, NULL, &errmsg);
    
    if (result == SQLITE_OK) {
        
        NSLog(@"更新数据成功");
    }
    else{
        
        NSLog(@"更新数据数据失败 %s", errmsg);
    }
    
    sqlite3_close(db);
    
}

- (NSArray<Person *> *)queryPerson:(NSString *) name{
    
    [self createDB];
    
    NSMutableArray<Person *> *person = [[NSMutableArray alloc]init];

    NSString *sql =  [NSString stringWithFormat:@"select phone, address from person where name = '%@'", name];
    
    //结果集
    sqlite3_stmt *stmt;
    
    int result = sqlite3_prepare_v2(db, [sql UTF8String], -1, &stmt, NULL);
    
    if (result == SQLITE_OK) {
        
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            
            //以查询的结果为数据集来取列 所以这里的列从0开始
            const char * cPhone  = (const char *)sqlite3_column_text(stmt, 0);
            const char * cAddress  =  (const char *)sqlite3_column_text(stmt, 1);
            
            Person *p = [[Person alloc]initWithName:name Phone:[NSString stringWithUTF8String:cPhone] Address:[NSString stringWithUTF8String:cAddress]];
            
            [person addObject:p];
        }
        
    }
    else{
        
        NSLog(@"查询数据失败");
    }
    
    sqlite3_close(db);
    
    return person;
    
    
}

- (void)deletePerson:(NSString *)name{
    
    
    [self createDB];
    
    NSString *sql = [NSString stringWithFormat:@"delete from person where name ='%@'", name];
    
    char *errmsg;
    
    int result = sqlite3_exec(db, [sql UTF8String], NULL, NULL, &errmsg);
    
    if (result == SQLITE_OK) {
        
        NSLog(@"删除数据成功");
    }
    else{
        
        NSLog(@"删除数据失败 %s", errmsg);
    }
    
    sqlite3_close(db);
}

@end
