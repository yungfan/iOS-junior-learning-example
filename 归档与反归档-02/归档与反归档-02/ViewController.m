//
//  ViewController.m
//  归档与反归档-02
//
//  Created by teacher on 16/11/29.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
- (IBAction)guidang:(id)sender;
- (IBAction)fanguidang:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guidang:(id)sender {
    
    Person *p1 = [[Person alloc]init];
    p1.age = 10;
    p1.name = @"张三";
    
    //如果你归档的数据存在本地  一定要存储到沙盒中去
    [NSKeyedArchiver archiveRootObject:p1 toFile:@"/Users/teacher/Desktop/person"];
    
}

- (IBAction)fanguidang:(id)sender {
    
    Person *p2 = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/teacher/Desktop/person"];
    
    NSLog(@"%@ --- %d", p2.name, p2.age);
}

@end
