//
//  ViewController.m
//  UITableView-02
//
//  Created by teacher on 16/10/19.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//  一旦你的ViewController是直接继承自UITableViewController 就不需要再设置数据源和代理了

#import "ViewController.h"

@interface ViewController ()

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

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;

}

//推荐使用这种方式 很受限制
//NSIndexPath 里面包含row、section
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //第二种 SB
    //1.必须是UITableViewController
    //2.在SB中找到Cell
    //3.找到cell的属性面板，设置identifier为你自己的重用标识符
    //4.在cellForRowAtIndexPath方法中直接通过dequeueReusableCellWithIdentifier来获取SB中的cell
    //5.此时不需要对cell进行判空，直接返回即可
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    //返回cell
    return  cell;
}


@end
