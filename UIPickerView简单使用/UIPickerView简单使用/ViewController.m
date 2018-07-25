//
//  ViewController.m
//  UIPickerView简单使用
//
//  Created by teacher on 16/9/27.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//  一定要弄明白显示多少列 每一列显示多少行 每一行显示什么东西

#import "ViewController.h"


//类扩展 拖线 定义属性 能放到这里的尽量放在这里 封装
@interface ViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>

@property(nonatomic, strong) NSArray *provinceNames;

@property(nonatomic, strong) NSArray *cityNames;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.provinceNames = @[@"安徽省",@"江苏省",@"山东省",@"河南省",@"浙江省"];
    self.cityNames = @[@"芜湖市",@"南京市",@"济南市",@"郑州市"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//每行显示的内容 列数*行数 写死是不行的  Delegate
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
   // NSLog(@"titleForRow %ld", row);
    
    
    if(component == 0)
    {
        return [self.provinceNames objectAtIndex:row];
    }
    else
    {
        return [self.cityNames objectAtIndex:row];
    }
}


//每一列现实多少数据 Datasource
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component == 0)
    {
        return self.provinceNames.count;
    }
    else
    {
        return self.cityNames.count;
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"didSelectRow %ld--%ld", component, row);

}

// 选择器一共多少列  Datasource
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

@end
