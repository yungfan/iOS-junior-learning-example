//
//  ViewController.m
//  UITableView索引
//
//  Created by stu1 on 2018/10/29.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *sectionTitles;
@property (nonatomic, strong) NSArray<NSArray *> *contentsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _sectionTitles  = [[NSArray alloc] initWithObjects:
                           @"A",@"C",@"F",@"G",@"H",@"M",@"S",@"T",@"X",@"Z", nil];
    self.contentsArray  = [[NSArray alloc] initWithObjects:
                           @[@"阿伟",@"阿姨",@"阿三"],
                           @[@"蔡芯",@"成龙",@"陈鑫",@"陈丹",@"成名"],
                           @[@"芳仔",@"房祖名",@"方大同",@"芳芳",@"范伟"],
                           @[@"郭靖",@"郭美美",@"过儿",@"过山车"],
                           @[@"何仙姑",@"和珅",@"郝歌",@"好人"],
                           @[@"妈妈",@"毛不易"],
                           @[@"孙周",@"沈冰",@"婶婶"],
                           @[@"涛涛",@"淘宝",@"套娃"],
                           @[@"小二",@"夏紫薇",@"许巍",@"许晴"],
                           @[@"周扒皮",@"周杰伦",@"张柏芝",@"张大仙"],nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return _sectionTitles.count;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.contentsArray[section].count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    cell.textLabel.text = self.contentsArray[indexPath.section][indexPath.row];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    
    return _sectionTitles[section];
    
}

//索引
-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    
    return _sectionTitles;
    
}

//当点击索引的时候会调用
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    
    NSIndexPath *indexpath = [NSIndexPath indexPathForRow:0 inSection:index];
    
    //tableview的滚动
    [tableView scrollToRowAtIndexPath:indexpath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    
    NSLog(@"%@", title);
    
    return index;
}

@end
