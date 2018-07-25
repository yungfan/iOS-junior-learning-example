//
//  ViewController.m
//  UITableView-01
//
//  Created by teacher on 16/10/19.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>

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

//数据源方法

//多少个分组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//每个分组多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}


//告诉控制器 每个Cell 长成什么样  这里面的写法有多种 但是每一种都是固定写法
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //第一种 纯代码
    
    //从可重用池中那一个标识为@"abc"的cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    //如果池子中没有 就创建一个
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"abc"];
    }
    
    //设置cell的几个默认属性
    cell.textLabel.text = @"星期三";
    cell.detailTextLabel.text = @"今天下午7，8节课要上UITableView";
    cell.imageView.image = [UIImage imageNamed:@"light"];
    
    //返回cell
    return  cell;
}


@end
