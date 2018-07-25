//
//  ViewController.m
//  SQLite-01
//
//  Created by teacher on 16/11/30.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <sqlite3.h>

@interface ViewController (){
    sqlite3 *db;
}
- (IBAction)open:(id)sender;
- (IBAction)createTab:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)delete:(id)sender;
- (IBAction)update:(id)sender;
- (IBAction)query:(id)sender;

- (IBAction)showResult:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *sex;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (nonatomic, strong) NSMutableArray *queryResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", NSHomeDirectory());
}


#pragma mark - 懒加载
-(NSArray *)queryResult{

    if (_queryResult == nil) {
        
        _queryResult = [NSMutableArray array];
    }

    return _queryResult;

}

#pragma mark - 打开数据库
- (IBAction)open:(id)sender {
    [self openDataBase];
}


#pragma mark - 数据库的基本操作

-(void)openDataBase{

    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSString *dataBasePath = [path stringByAppendingPathComponent:@"person.sqlite"];
    
    int result = sqlite3_open([dataBasePath UTF8String], &db);
    
    if (result == SQLITE_OK) {
        
        NSLog(@"打开或创建数据库成功");
        
    } else{
        
        NSLog(@"打开或创建数据库失败");
        
    }
}


#pragma mark - 创建表
- (IBAction)createTab:(id)sender {
    //创建表之前一定要打开数据库
    [self openDataBase];
    
    const char *sql = "create table person(id integer primary key autoincrement, name text, age integer, sex text)";
    
    char *errmsg;
     //其中 sqlite* 表示打开的数据库； sql 为执行的sql语句；callback回调函数；void  *data为回调函数的第一个参数指向提供给回调函数的应用程序特定的数据，也是回调函数的第一个参数； errmsg 为错误信息，是指向错误消息字符串的指针 。
    int result = sqlite3_exec(db, sql, NULL, NULL, &errmsg);
    
    
    if (result == SQLITE_OK) {
        
        NSLog(@"创建表成功");
        
    } else{
        
        NSLog(@"创建表失败 -- %s", errmsg);
        
    }
    
    //关闭数据库
    sqlite3_close(db);
}

#pragma mark - 增加数据
- (IBAction)save:(id)sender {
    
    
    //创建表之前一定要打开数据库
    [self openDataBase];
    
    NSString *n = self.name.text;
    int a = [self.age.text intValue];
    NSString *s = self.sex.text;
    
    Person *person = [[Person alloc]init];
    
    person.age = a;
    person.name = n;
    person.sex = s;
    
    
    //占位符
    
    NSString *sqlOC = [NSString stringWithFormat:@"insert into person(name, age, sex) values('%@', %d, '%@')", person.name,person.age, person.sex];
    
    
    NSLog(@"%@", sqlOC);
    
    
    const char *sql = [sqlOC UTF8String];
    
    char *errmsg;
    //其中 sqlite* 表示打开的数据库； sql 为执行的sql语句；callback回调函数；void  *data为回调函数的第一个参数指向提供给回调函数的应用程序特定的数据，也是回调函数的第一个参数； errmsg 为错误信息，是指向错误消息字符串的指针 。
    int result = sqlite3_exec(db, sql, NULL, NULL, &errmsg);
    
    
    if (result == SQLITE_OK) {
        
        NSLog(@"保存成功");
        
    } else{
        
        NSLog(@"保存失败 -- %s", errmsg);
        
    }
    
    //关闭数据库
    sqlite3_close(db);
}

#pragma mark - 删除数据
- (IBAction)delete:(id)sender {
   
    //创建表之前一定要打开数据库
    [self openDataBase];
    
    //占位符
    
    NSString *sqlOC = [NSString stringWithFormat:@"delete from person where id = %d", 1];
    
    
    NSLog(@"%@", sqlOC);
    
    
    const char *sql = [sqlOC UTF8String];
    
    char *errmsg;
    //其中 sqlite* 表示打开的数据库； sql 为执行的sql语句；callback回调函数；void  *data为回调函数的第一个参数指向提供给回调函数的应用程序特定的数据，也是回调函数的第一个参数； errmsg 为错误信息，是指向错误消息字符串的指针 。
    int result = sqlite3_exec(db, sql, NULL, NULL, &errmsg);
    
    
    if (result == SQLITE_OK) {
        
        NSLog(@"删除成功");
        
    } else{
        
        NSLog(@"删除失败 -- %s", errmsg);
        
    }
    
    //关闭数据库
    sqlite3_close(db);
}

#pragma mark - 修改数据
- (IBAction)update:(id)sender {
    //创建表之前一定要打开数据库
    [self openDataBase];
    
    //占位符
    
    NSString *sqlOC = [NSString stringWithFormat:@"update person set sex = '%@' where id = %d", @"male",1];
    
    
    NSLog(@"%@", sqlOC);
    
    
    const char *sql = [sqlOC UTF8String];
    
    char *errmsg;
    //其中 sqlite* 表示打开的数据库； sql 为执行的sql语句；callback回调函数；void  *data为回调函数的第一个参数指向提供给回调函数的应用程序特定的数据，也是回调函数的第一个参数； errmsg 为错误信息，是指向错误消息字符串的指针 。
    int result = sqlite3_exec(db, sql, NULL, NULL, &errmsg);
    
    
    if (result == SQLITE_OK) {
        
        NSLog(@"修改成功");
        
    } else{
        
        NSLog(@"修改失败 -- %s", errmsg);
        
    }
    
    //关闭数据库
    sqlite3_close(db);
}

#pragma mark - 查询数据
- (IBAction)query:(id)sender {
    
    [self openDataBase];
    
    sqlite3_stmt *stmt;
    
    //select count(*) from table news;
    
    const char *sql = "select name, age, sex from person";
    
    int result = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);
    
    
    
    if (result == SQLITE_OK) {
        
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            
            const char *name = sqlite3_column_text(stmt, 0);
            int  age = sqlite3_column_int(stmt, 1);
            const char *sex = sqlite3_column_text(stmt, 2);
            
            Person *person = [[Person alloc]init];
            
            person.name =[NSString stringWithUTF8String:name] ;
            person.age = age;
            person.sex = [NSString stringWithUTF8String:sex] ;
            
            [self.queryResult addObject:person];
        
        }
        
        
        
        
        //NSLog(@"查询成功");
        
    } else{
        
        //NSLog(@"查询失败");
        
    }

    
    
    sqlite3_close(db);
}

- (IBAction)showResult:(id)sender {
    
    Person *person = [self.queryResult objectAtIndex:1];
    
    
    self.resultLabel.text = [NSString stringWithFormat:@"姓名%@, 年龄%d, 性别%@", person.name, person.age, person.sex ];
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [self.view endEditing:YES];

}
@end
