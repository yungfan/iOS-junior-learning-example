//
//  ViewController.m
//  汽车品牌展示
//
//  Created by teacher on 16/10/25.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"
#import "Car.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

//plist整个文档对应的数组
@property(nonatomic, strong) NSArray *plistArray;
//存放plist中第一层数据对应模型
@property(nonatomic, strong) NSMutableArray *carArray;

@end

@implementation ViewController



#pragma mark 懒加载数据
//读plist懒加载
-(NSArray *)plistArray
{
    if (_plistArray == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"cars_total" ofType:@"plist"];
        _plistArray = [NSArray arrayWithContentsOfFile:path];
    }
    return _plistArray;

}

//懒加载读取第二层数据
-(NSArray *)carArray
{
    if (_carArray == nil) {
        _carArray = [NSMutableArray array];
        for (int i = 0; i<self.plistArray.count; i++) {
            CarGroup *carGroup = [[CarGroup alloc]initWithDic:[self.plistArray objectAtIndex:i]];
            [_carArray addObject:carGroup];
        }
    }
    
    return _carArray;

}

#pragma mark ViewController的生命周期方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.rowHeight = 20.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark 数据源方法
//每一行的SectionTitle
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    CarGroup *group = self.carArray[section];
    
    return [group title];

}

//一共多少个分组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return self.carArray.count;

}


//每个分组多少行
//问题是这里到底返回多少？？？？？？？？？？？？？？？
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    //去处对应的分组数据
    CarGroup *groups = [self.carArray objectAtIndex:section];
    
    //返回每一组的汽车数（一直在变）
    return groups.cars.count;

}

//每一行Cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"car"];

    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"car"];
    }
    
    //取出对应的组中对应行的数据
    CarGroup *groups = [self.carArray objectAtIndex:indexPath.section];
    Car *car = [groups.cars objectAtIndex:indexPath.row];
    
    
    //进行赋值
    cell.imageView.image = [UIImage imageNamed:car.icon];
    cell.textLabel.text = car.name;
    return cell;

}


//KVC 设置右边的索引 点击事件默认都是先好了
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    
    
    return [self.carArray valueForKey:@"title"];

}


#pragma mark 代理方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //取出对应的组中对应行的数据
    CarGroup *groups = [self.carArray objectAtIndex:indexPath.section];
    Car *car = [groups.cars objectAtIndex:indexPath.row];
    
    NSString *msg = [NSString stringWithFormat:@"你点击了%@", car.name];
    
    //创建对话框
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    //创建按钮  handler里面的语句就是对应按钮点击时调用的代码
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        //让对话框消失
        [alert dismissViewControllerAnimated:YES completion:^{
            
        }];
    }];
    
    //同上
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        //让对话框消失
        [alert dismissViewControllerAnimated:YES completion:^{
            
        }];
    }];
    

    //将按钮添加到对话框上去
    [alert addAction:action];
    [alert addAction:action2];
    
    UIImageView *imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:car.icon]];

    
    [alert.view addSubview:imgView];

    //弹出对话框
    [self presentViewController:alert animated:YES completion:^{
        
    }];

}


//设置行高 这个方法不好 iOS8以后不建议这样使用 它的优先级比rowHeight 要高 但是如果二者都不设置会有一个默认高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 80.0;
    
}

@end
