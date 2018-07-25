//
//  ViewController.m
//  城市选择器
//
//  Created by teacher on 16/9/28.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>

@property(nonatomic, strong) NSDictionary *data;

@property(nonatomic, strong) NSArray *provinces;

@property(nonatomic, strong) NSArray *cities;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //读取plist数据 保存到NSDictionary
    // 1、找到plist路径
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"cityData" ofType:@"plist"];
    
    // 2、初始化NSDictionary
    self.data = [[NSDictionary alloc]initWithContentsOfFile:path];
    
   // NSLog(@"%@", self.data);
    
    
    self.provinces = [self.data allKeys];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //第一列显示省份
    if (component == 0) {
        return [self.provinces objectAtIndex:row];
    }
    
    //第二列显示城市
    else  {
        //要获取用户选中的到底是那个省份
        NSInteger selRow = [pickerView selectedRowInComponent:0];
        NSString *key = [self.provinces objectAtIndex:selRow];
        //通过字典获取用户选择的省份对应的城市
        self.cities = [self.data valueForKey:key];
        return [self.cities objectAtIndex:row];
    }

}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return  2;
}


//一列中有多少行
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return self.provinces.count;
    } else{
        
        NSInteger selRow = [pickerView selectedRowInComponent:0];
        
        NSLog(@"%ld", selRow);
        
        NSString *key = [self.provinces objectAtIndex:selRow];
        
        self.cities = [self.data valueForKey:key];
        
        return self.cities.count;
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //NSLog(@"didSelectRow %ld ---- %ld", component, row);
    
    //[pickerView reloadComponent:1];
   
}

@end
