//
//  DBHelper.m
//  Sqlite数据存储
//
//  Created by stu1 on 2018/12/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "DBHelper.h"
#import "fmdb/FMDB.h"

//FMDB只是对SQLite数据库的操作进行了OC的封装，使用起来是需要会OC就可以了，但是对表进行操作的SQL语句还是不能省
//对于没有学过SQL语句的同学来说还是有难度，那怎么办？ ---- ORM框架（对象关系映射）但是执行效率相对原生的SQL语句低下,SQL语句不能把控

@interface DBHelper()

@property(nonatomic, strong) FMDatabase *fmdb;

@end

@implementation DBHelper

- (void)createDB{
    
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
    NSLog(@"%@", docPath);
    
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"stu.db"];
    
    self.fmdb = [FMDatabase databaseWithPath:dbPath];
    
    if ([self.fmdb open]) {
        
        NSLog(@"打开数据库成功");
        
    } else{
        
        NSLog(@"打开数据库失败");
    }
    
}

- (void)createTab{
    
    //用之前一定要打开数据库
    [self createDB];
    
    NSString *sql = @"create table person(id integer primary key autoincrement, name text,  phone text, address text)";
    
    BOOL result = [self.fmdb executeUpdate:sql];
    
    if(result){
        
        NSLog(@"创建表成功");
        
    }
    else{
        
        NSLog(@"创建表失败");
    }
    
    //用完关闭数据库
    [self.fmdb close];
}

- (void)insertPerson:(Person *)person{
    
    [self createDB];
    
    NSString *sql = @"insert into person(name, phone, address) values (?, ?, ?)";
    
    BOOL result = [self.fmdb executeUpdate:sql, person.name, person.phone, person.address];
    
    
    if (result) {
        
        NSLog(@"插入数据成功");
    }
    else{
        
        NSLog(@"插入数据失败");
    }
    
    [self.fmdb close];
}

- (void)updatePerson:(Person *)person{
    
    [self createDB];
    
    NSString *sql = @"update person set phone =?, address =? where name = ?";
    
    BOOL result = [self.fmdb executeUpdate:sql, person.phone, person.address, person.name];
    
    if (result) {
        
        NSLog(@"更新数据成功");
    }
    else{
        
        NSLog(@"更新数据数据失败");
    }
    
    [self.fmdb close];
    
}

- (NSArray<Person *> *)queryPerson:(NSString *) name{
    
    [self createDB];
    
    NSMutableArray<Person *> *person = [[NSMutableArray alloc]init];

    NSString *sql =  @"select phone, address from person where name = ?";
    
    //结果集
    FMResultSet *result = [self.fmdb executeQuery:sql, name];
    
    while (result.next){
        
        NSString *phone = [result stringForColumn:@"phone"];
        
        NSString *address = [result stringForColumn:@"address"];
        
        Person *p = [[Person alloc]initWithName:name Phone:phone Address:address];
        
        [person addObject:p];
    }

    [self.fmdb close];
    
    return person;
    
    
}

- (void)deletePerson:(NSString *)name{
    
    
    [self createDB];
    
    NSString *sql = @"delete from person where name =?";
    
    BOOL result = [self.fmdb executeUpdate:sql, name];
    
    if (result) {
        
        NSLog(@"删除数据成功");
    }
    else{
        
        NSLog(@"删除数据失败");
    }
    
    [self.fmdb close];
}

@end
