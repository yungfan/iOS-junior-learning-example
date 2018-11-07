//
//  ViewController.m
//  UITableView-基本使用
//
//  Created by stu1 on 2018/10/22.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

//textLabel显示的内容数组
@property (strong, nonatomic) NSMutableArray *content;
//detailTextLabel显示的内容数组
@property (strong, nonatomic) NSMutableArray *detailContent;
//UITableView
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建下拉刷新的控件
    UIRefreshControl *refresh = [[UIRefreshControl alloc]init];
    //设置刷新的文字
    refresh.attributedTitle = [[NSAttributedString alloc]initWithString:@"下拉刷新"];
    //监听下拉刷新的事件
    [refresh addTarget:self action:@selector(loadMoreData) forControlEvents:UIControlEventValueChanged];
    //给tableView赋值
    self.tableView.refreshControl = refresh;
    

    NSArray *one = @[@"iPhone3G",@"iPhone3GS",@"iPhone4",@"iPhone4S",@"iPhone5",@"iPhone5S",@"iPhone6",@"iPhone6 Plus",@"iPhone6S",@"iPhone6S Plus",@"iPhone SE",@"iPhone7",@"iPhone7 Plus",@"iPhone8",@"iPhone8 PLus",@"iPhone X",@"iPhone XS",@"iPhone XR",@"iPhone XS Max"];
    
    self.content = [NSMutableArray arrayWithArray:one];
    
    NSArray *two = @[@"iPhone3G-iOS3",@"iPhone3GS-iOS4",@"iPhone4-iOS5",@"iPhone4S-iOS6",@"iPhone5-iOS7",@"iPhone5S-iOS7",@"iPhone6-iOS8",@"iPhone6 Plus-iOS8",@"iPhone6S-iOS9",@"iPhone6S Plus-iOS9",@"iPhone SE-iOS9",@"iPhone7-iOS10",@"iPhone7 Plus-iOS10",@"iPhone8-iOS11",@"iPhone8 PLus-iOS11",@"iPhone X-iOS11",@"iPhone XS-iOS12",@"iPhone XR-iOS12",@"iPhone XS Max-iOS12"];
    
    self.detailContent = [NSMutableArray arrayWithArray:two];
}

-(void)loadMoreData{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        //往数据源中增加数据
        [self.content insertObject:@"iPhone 1" atIndex:0];
        [self.detailContent insertObject:@"iPhone 1-iPhone OS" atIndex:0];
        
        //刷新表格
        [self.tableView reloadData];
        
        //结束下拉刷新的状态
        if ([self.tableView.refreshControl isRefreshing]) {
            
            [self.tableView.refreshControl endRefreshing];
        }
    });
    
    
    
}

#pragma mark - UITableViewDataSource

// 每个单元格长什么样子
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    //行号从0开始 个数self.content.count 正好与 数组数据对应 
    cell.textLabel.text = self.content[indexPath.row];
    
    cell.detailTextLabel.text = self.detailContent[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:@"iPhone"];
    
    return cell;
    
}

//每组多少行（多少个单元格）
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.content.count;
    
}

//表格有多少组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

@end
