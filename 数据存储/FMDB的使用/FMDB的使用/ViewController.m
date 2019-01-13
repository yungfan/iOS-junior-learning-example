//
//  ViewController.m
//  Sqlite数据存储
//
//  Created by stu1 on 2018/12/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "DBHelper.h"
#import "Person.h"

@interface ViewController ()

- (IBAction)createDB:(id)sender;
- (IBAction)createTab:(id)sender;
- (IBAction)insertData:(id)sender;
- (IBAction)updateData:(id)sender;
- (IBAction)queryData:(id)sender;
- (IBAction)deleteData:(id)sender;


@property (strong, nonatomic) DBHelper *dbHelper;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dbHelper = [[DBHelper alloc]init];
    
    NSLog(@"%@", NSHomeDirectory());
}


- (IBAction)createDB:(id)sender {
    
    [self.dbHelper createDB];
}

- (IBAction)createTab:(id)sender {
    
    [self.dbHelper createTab];
}

- (IBAction)insertData:(id)sender {
    
    Person *person = [[Person alloc]initWithName:@"zhangsan" Phone:@"13855555555" Address:@"AnHuiWuhu"];
    
    [self.dbHelper insertPerson:person];
}

- (IBAction)updateData:(id)sender {
    
    NSArray<Person *> *person = [self.dbHelper queryPerson:@"zhangsan"];
    
    if (person.count == 0) {
        NSLog(@"没有对应的数据需要更新");
        return;
    }
    
    for (Person *p in person){
        
        p.phone = @"1234567890";
        p.address = @"JiangSuNanjing";
        
        [self.dbHelper updatePerson:p];
    }
    
}

- (IBAction)queryData:(id)sender {
    
    NSArray<Person *> *person = [self.dbHelper queryPerson:@"zhangsan"];
    
    if (person.count == 0) {
        NSLog(@"查询不到对应的数据");
        return;
    }
    
    for (Person *p in person) {
        NSLog(@"%@", p);
    }
    
    
}

- (IBAction)deleteData:(id)sender {
    
    [self.dbHelper deletePerson:@"zhangsan"];
}
@end
