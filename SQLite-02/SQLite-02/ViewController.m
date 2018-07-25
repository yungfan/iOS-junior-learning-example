//
//  ViewController.m
//  SQLite-02
//
//  Created by teacher on 16/12/6.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "FMDB.h"


//FMDB只是对SQLite数据库的操作进行了OC的封装，使用起来是需要会OC就可以了，但是对表进行操作的SQL语句还是不能省
//对于没有学过SQL语句的同学来说还是有难度，那怎么办？ ---- ORM框架（对象关系映射）但是执行效率相对原生的SQL语句低下,SQL语句不能把控

@interface ViewController ()

@property(nonatomic, strong) FMDatabase *db;

- (IBAction)add:(id)sender;

- (IBAction)delete:(id)sender;

- (IBAction)update:(id)sender;

- (IBAction)query:(id)sender;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", NSHomeDirectory());

}

#pragma mark - 打开数据库
-(void)openDataBase{
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];

    NSString *dbPath = [path stringByAppendingPathComponent:@"stu.sqlite"];
    
    self.db = [FMDatabase databaseWithPath:dbPath];
    
    if ([self.db open]) {
        
        NSLog(@"打开数据库成功");
        
    } else{
    
        NSLog(@"打开数据库失败");
    }
    
}

-(void)createTable{
   
    [self openDataBase];
    
    NSString * sql = @"create table if not exists t_user(id integer primary key autoincrement, name text, age integer, sex text)";
    
    BOOL result = [self.db executeUpdate:sql];
    
    if(result){
        
        NSLog(@"创建表成功");
        
    }
}

#pragma mark - 增加记录
- (IBAction)add:(id)sender {
    
    
    [self createTable];
    
    NSString *sql = @"insert into t_user(name, age, sex) values(?, ?, ?)";
    
    // ... 代表可变参数
    BOOL result = [self.db executeUpdate:sql, @"zhangsan", @18, @"male"];
    
    if(result){
        
        NSLog(@"增加记录成功");
        
    }
    
    [self.db close];
}


#pragma mark - 删除记录
- (IBAction)delete:(id)sender {
    
    [self createTable];
    
    NSString *sql = @"delete from t_user where id = ?";
    
    // ... 代表可变参数
    BOOL result = [self.db executeUpdate:sql, @1];
    
    if(result){
        
        NSLog(@"删除记录成功");
        
    }
    
    [self.db close];
    
}


#pragma mark - 修改记录
- (IBAction)update:(id)sender {
    
 
    
    [self createTable];
    
    NSString *sql = @"update t_user set age = ? where id = ?";
    
    // ... 代表可变参数
    BOOL result = [self.db executeUpdate:sql, @20, @1];
    
    if(result){
        
        NSLog(@"修改记录成功");
        
    }

    [self.db close];

    
}


#pragma mark - 查询记录
- (IBAction)query:(id)sender {
    
    [self createTable];
    
    NSString *sql = @"select * from t_user";
    
    FMResultSet *result = [self.db executeQuery:sql];
    
    while (result.next) {
        
        int id = [result intForColumn:@"id"];
        
        NSString *name = [result stringForColumn:@"name"];
        
        int age = [result intForColumn:@"age"];
        
        NSString *sex = [result stringForColumn:@"sex"];
        
        NSLog(@"%d--%@--%d--%@", id, name, age, sex);
        
    }
    
    [self.db close];
}
@end
