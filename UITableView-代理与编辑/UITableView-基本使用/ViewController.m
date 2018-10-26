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
//编辑按钮
- (IBAction)edit:(id)sender;
- (IBAction)done:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *one = @[@"iPhone3G",@"iPhone3GS",@"iPhone4",@"iPhone4S",@"iPhone5",@"iPhone5S",@"iPhone6",@"iPhone6 Plus",@"iPhone6S",@"iPhone6S Plus",@"iPhone SE",@"iPhone7",@"iPhone7 Plus",@"iPhone8",@"iPhone8 PLus",@"iPhone X",@"iPhone XS",@"iPhone XR",@"iPhone XS Max"];
    
    self.content = [NSMutableArray arrayWithArray:one];
    
    NSArray *two = @[@"iPhone3G-iOS3",@"iPhone3GS-iOS4",@"iPhone4-iOS5",@"iPhone4S-iOS6",@"iPhone5-iOS7",@"iPhone5S-iOS7",@"iPhone6-iOS8",@"iPhone6 Plus-iOS8",@"iPhone6S-iOS9",@"iPhone6S Plus-iOS9",@"iPhone SE-iOS9",@"iPhone7-iOS10",@"iPhone7 Plus-iOS10",@"iPhone8-iOS11",@"iPhone8 PLus-iOS11",@"iPhone X-iOS11",@"iPhone XS-iOS12",@"iPhone XR-iOS12",@"iPhone XS Max-iOS12"];
    
    self.detailContent = [NSMutableArray arrayWithArray:two];
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

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return @"iPhone 大全";
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    return @"iPhone-iOS 大全";
}

#pragma mark - UITableViewDelegate


//点击行
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSLog(@"%@ --- %@", self.content[indexPath.row], self.detailContent[indexPath.row]);
    
}

//行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 80.0;
    
}

//分组头部高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 100.0;
    
}

//分组尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 60.0;
    
}

//删除
//能够编辑
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}

//真正进入编辑以后响应的方法
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //如果是删除
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        //数据源中移除数据 -- 真正的删除
        [self.content removeObjectAtIndex:indexPath.row];
        [self.detailContent removeObjectAtIndex:indexPath.row];
        
        
        //UITableView也需要删除一行 -- 表象
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
    
    //如果是增加
    if (editingStyle == UITableViewCellEditingStyleInsert) {
        
        //数据源中增加数据
        [self.content insertObject:@"iPhone1" atIndex:indexPath.row];
        [self.detailContent insertObject:@"iPhone1 - iPhone OS" atIndex:indexPath.row];
        
        //UITableView增加一行
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    
}

//删除按钮的文字
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return @"删除";
    
}

//增加
//进入编辑状态
- (IBAction)edit:(id)sender {
    
    [self.tableView setEditing:YES];
}

- (IBAction)done:(id)sender {
    
    [self.tableView setEditing:NO];
}

//设置一个编辑风格（默认是删除）
//返回编辑的风格
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return UITableViewCellEditingStyleInsert;
    
}

//移动
//能否移动
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}

//从哪一行移动到哪一行
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
    //完成数据源的数据交换 否则一滑动就会复原
//    NSString *source = [self.content objectAtIndex:sourceIndexPath.row];
//    NSString *sourceDetail = [self.detailContent objectAtIndex:sourceIndexPath.row];
//
//
//
//    NSString *destination = [self.content objectAtIndex:destinationIndexPath.row];
//    NSString *destinationDetail = [self.detailContent objectAtIndex:destinationIndexPath.row];
//
//
//    self.content[destinationIndexPath.row] = source;
//    self.detailContent[destinationIndexPath.row] = sourceDetail;
//    self.content[sourceIndexPath.row] = destination;
//    self.detailContent[sourceIndexPath.row] = destinationDetail;
    
    
    
    // 这样写可能更好理解一点
    NSString *contentText = [self.content objectAtIndex:sourceIndexPath.row];
    // 先把原位置的删了 再增加一个到目标位置
    [self.content removeObjectAtIndex:sourceIndexPath.row];
    [self.content insertObject:contentText atIndex:destinationIndexPath.row];


    NSString *contentDetailText = [self.content objectAtIndex:sourceIndexPath.row];
    [self.detailContent removeObjectAtIndex:sourceIndexPath.row];
    [self.detailContent insertObject:contentDetailText atIndex:destinationIndexPath.row];

}


@end
