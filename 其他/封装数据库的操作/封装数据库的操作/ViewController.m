//
//  ViewController.m
//  封装数据库的操作
//
//  Created by teacher on 16/12/28.
//  Copyright © 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "CarBookDAO.h"
#import "DBUtils.h"

@interface ViewController ()

- (IBAction)createtab:(id)sender;

- (IBAction)add:(id)sender;

- (IBAction)update:(id)sender;

- (IBAction)delete:(id)sender;

- (IBAction)query:(id)sender;


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


//增加一条数据
- (IBAction)createtab:(id)sender {
    
    [DBUtils createTable];
}

- (IBAction)add:(id)sender {
    
    CarBook *carBook = [[CarBook alloc]initWithBZ:@"" andFkfs:@"现金" andGls:@"10000" andXfje:@"200" andXmmc:@"加油费" andDate:@"2016-12-28"];
    
    //在这里面一句话实现增加
    [CarBookDAO addCarBook:carBook];
    
}


- (IBAction)update:(id)sender {
    
    [CarBookDAO updateCarBook:1];
    
}


- (IBAction)delete:(id)sender {
    
     [CarBookDAO deleteCarBook:4];
    
}


- (IBAction)query:(id)sender {
    
    //在这里面一句话实现增加
    [CarBookDAO queryAll];
}
@end
