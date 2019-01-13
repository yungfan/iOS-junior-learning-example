//
//  ViewController.m
//  归档
//
//  Created by stu1 on 2018/12/12.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
- (IBAction)unarchiver:(id)sender;

- (IBAction)archiver:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSKeyedArchiver *keyedArchiver =   [[NSKeyedArchiver alloc]initRequiringSecureCoding:YES];
    
//    [keyedArchiver encodeObject:@[@"AAA", @"BBB"] forKey:@"letter"];
//
//    [keyedArchiver decodeObjectForKey:@"letter"];
    
   
}

//反序列化
- (IBAction)unarchiver:(id)sender {
    
    NSError *error;
    //从沙盒读取
    NSString *file = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]stringByAppendingPathComponent:@"123.txt"];
    
    NSData *data = [NSData dataWithContentsOfFile:file];
    
    //NSKeyedUnarchiver进行反序列化
    Person *person = [NSKeyedUnarchiver unarchivedObjectOfClass:Person.class fromData:data error:&error];
    
    if (error) {
        NSLog(@"反序列化出错");
    }
    else{
        
        NSLog(@"%@ -- %d", person.name, person.age);
    }
}

//序列化
- (IBAction)archiver:(id)sender {
    
    NSError *error;
    
    Person *person = [[Person alloc]init];
    person.name = @"zhangsan";
    person.age = 10;
    
    //NSKeyedArchiver进行归档 第二个参数是安全编码
    NSData *data =  [NSKeyedArchiver archivedDataWithRootObject:person requiringSecureCoding:YES error:&error];
    
    if (error) {
        NSLog(@"序列化出错 -- %@", error);
    }
    
    else{
        //存到沙盒里面去
        NSString *file = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]stringByAppendingPathComponent:@"123.txt"];
        
        [data writeToFile:file atomically:YES];
    }
}
@end
