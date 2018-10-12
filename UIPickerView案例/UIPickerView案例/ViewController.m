//
//  ViewController.m
//  UIPickerView案例
//
//  Created by stu1 on 2018/10/12.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UIPickerView *pickerView;

@property (nonatomic, strong) NSArray *rowDataSource;

@property (nonatomic, strong) NSArray *row2DataSource;

@property (weak, nonatomic) IBOutlet UILabel *selectInfo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.rowDataSource = @[@"安徽省",@"浙江省",@"山东省",@"江苏省",@"陕西省",@"福建省", @"湖北省", @"湖南省"];
    
    self.row2DataSource = @[@"芜湖市",@"杭州市",@"南京市",@"杭州市",@"西安市",@"厦门市", @"武汉市", @"长沙市"];
    
    self.pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 400)];
    
    //UIPickerView 选择的数据必须提供，可以有多列数据 每一列有多行数据
    
    self.pickerView.dataSource = self;
    
    self.pickerView.delegate = self;
    
    [self.view addSubview:self.pickerView];
   
}

//列数
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

//每一列行数
- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger count = 0;
    
    if(component == 0) {
        
        count = self.rowDataSource.count;
        
    }
    
    else if (component == 1){
        
        count =  self.row2DataSource.count;
    }
   
    
    return count;
}
//每一行的数据
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString * title = @"";
    
    if(component == 0) {
        
        title = self.rowDataSource[row];
        
    }
    
    else if (component == 1){
        
        title =  self.row2DataSource[row];
    }
    
    
    return title;
}

//选中了某列某行的数据
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSString *selectedRowData = @"";
    NSString *selectedRow2Data = @"";
    
    if(component == 0){
        
        selectedRowData = self.rowDataSource[row];
    }
    
    else if (component == 1){
        
        selectedRow2Data = self.row2DataSource[row];
    }
    
    
    self.selectInfo.text = [NSString stringWithFormat:@"您选择了%@%@", selectedRowData, selectedRow2Data];
}

@end
