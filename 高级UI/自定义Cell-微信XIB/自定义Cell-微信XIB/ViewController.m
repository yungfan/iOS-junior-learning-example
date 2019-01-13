//
//  ViewController.m
//  自定义Cell-微信XIB
//
//  Created by stu1 on 2018/11/5.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "WeChatTableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>


@property(nonatomic, strong) NSArray *pics;
@property(nonatomic, strong) NSArray *titles;
@property(nonatomic, strong) NSArray *times;
@property(nonatomic, strong) NSArray *contents;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.pics = @[@"add_friend_icon_addgroup_36x36_",@"Contact_icon_ContactTag_36x36_",@"plugins_FriendNotify_36x36_",@"Plugins_WeSport_36x36_",@"ReadVerified_icon_36x36_"];
    self.titles = @[@"小龙女哀悼金庸", @"坠江公交黑匣子",@"新iPad发布",@"金庸去世", @"苹果发布会"];
    self.times = @[@"10:12", @"10:15", @"10:20", @"10:50", @"11:00"];
    self.contents = @[@"小龙女哀悼金庸:他笔下的小龙女给予我一切一切", @"重庆坠江公交车黑匣子打捞出水 已交公安部门", @"新iPad发布 苹果10月发布会发布三款新品", @"94岁金庸去世 网友明星悼念:他带着武侠梦睡着了", @"苹果于10月30号晚上22点召开新品发布会"];
    
    self.tableView.rowHeight = 80.0;
    
    //注册cell
    //在当前的工程目录下通过名字找到xib
    UINib *nib = [UINib nibWithNibName:@"WeChatTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"abc"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return self.titles.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    WeChatTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    //创建一个模型
    WeChat *wechat = [[WeChat alloc]initWithPicName:self.pics[indexPath.row] titleText:self.titles[indexPath.row] timeText:self.times[indexPath.row] contentText:self.contents[indexPath.row]];
    
    cell.wechat = wechat;
    
    [cell configUI];

    return  cell;
}
@end
