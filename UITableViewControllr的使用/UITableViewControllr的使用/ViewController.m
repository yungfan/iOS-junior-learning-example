//
//  ViewController.m
//  UITableViewControllr的使用
//
//  Created by stu1 on 2018/11/9.
//  Copyright © 2018年 abc. All rights reserved.
// 不用再实现<UITableViewDelegate, UITableViewDataSource>  UITableViewController已经帮我们做好了
// 使用场景：1.静态单元格 2.界面就是一个表格视图 没有其他的控件

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    NSLog(@"您选中了%ld行",indexPath.row);
    
}

@end
