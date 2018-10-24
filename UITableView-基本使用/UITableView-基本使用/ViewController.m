//
//  ViewController.m
//  UITableView-基本使用
//
//  Created by stu1 on 2018/10/22.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 每个单元格长什么样子
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    /**
    //1.Cell四种样式演示、Cell内部结构
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"abc"];
    
    cell.textLabel.text = @"AAA";
    
    cell.detailTextLabel.text = @"BBB";
    
    cell.imageView.image = [UIImage imageNamed:@"setting_about_pic"];
    
    return cell;
     **/
    
    
    /**
    //2.重用 SB中有一个Prototype Cells
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    cell.textLabel.text = @"AAA";
    
    cell.detailTextLabel.text = @"BBB";
    
    cell.imageView.image = [UIImage imageNamed:@"setting_about_pic"];
    
    return cell;
     */
    
    
    //3.重用 纯代码（SB换了一个没有Prototype Cells的VC）
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    //如果重用池中没有可用的Cell
    if(cell == nil){
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"abc"];
        
        NSLog(@"nil");
        
    }
    
    cell.textLabel.text = @"AAA";
    
    cell.detailTextLabel.text = @"BBB";
    
    cell.imageView.image = [UIImage imageNamed:@"setting_about_pic"];
    
    return cell;
    
}


//每组多少行（多少个单元格）
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
    
}

//表格有多少组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}


@end
