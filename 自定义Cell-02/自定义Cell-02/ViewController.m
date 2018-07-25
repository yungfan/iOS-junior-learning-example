//
//  ViewController.m
//  自定义Cell-01
//
//  Created by teacher on 16/11/1.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "NewsTableViewCell.h"
#import "News.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) NSMutableArray *newsArray;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)deleteRow:(id)sender;

@end

@implementation ViewController


//模拟数据 真是项目中基本上都是从服务器端获取来的
-(NSMutableArray *)newsArray{
    if (_newsArray == nil) {
        
        _newsArray = [NSMutableArray array];
        
        for (int i = 0; i< 20; i++) {
            News *news = [[News alloc]init];
            news.newsImg = @"purple";
            news.newsTitle = [NSString stringWithFormat:@"芜湖市夏天暴雨%dml", i];
            news.newsTime = [NSString stringWithFormat:@"%d分钟之前", i];
            news.newsRead = [NSString stringWithFormat:@"阅读%d", i];
            
            [_newsArray addObject:news];
            
        }
        
    }
    return _newsArray;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //使用XIB进行Cell设计的时候 一定要进行注册 不注册 运行时直接崩掉 但是程序编译的时候不报错
    UINib *nib = [UINib nibWithNibName:@"NewsTableViewCell" bundle:nil];
    
    [self.tableView registerNib:nib forCellReuseIdentifier:@"cell"];
    
    self.tableView.rowHeight = 120.0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark 数据源方法

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.newsArray.count;

}


//此时返回的是自定义NewsCell 就可以访问里面的属性值（界面），根据需求进行相应的赋值

//1.由于这种方式用的是UITableViewController，有一定的不局限性，但是可以界面编辑Cell。那么普通ViewController怎么办？
//2.由于自定义Cell长相不同，所以定义起来属性可能非常多，所以此时给它赋值的数据应该封装成一个对象（该例子中并没有 违背了面向对象的原则）


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    News *news = [self.newsArray objectAtIndex:indexPath.row];
    
    cell.newsImg.image = [UIImage imageNamed:news.newsImg];
    
    cell.newsTitle.text = news.newsTitle;
    
    cell.newsTime.text = news.newsTime;
    
    cell.newsRead.text = news.newsRead;
    
    return cell;

}



- (IBAction)deleteRow:(id)sender {
    
    [self.tableView setEditing:YES animated:YES];
}


//设置编辑风格
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return UITableViewCellEditingStyleDelete;

}

//点击那个删除按钮响应的方法
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        //真正删除表格数据
        
        //1、实质：数据源删除了用户删除操作的数据
        [_newsArray removeObjectAtIndex:indexPath.row];
        
        //2、表象：给用户看到那一行数据真的从表格中删除了
        //[self.tableView reloadData];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        
    }


}


@end
