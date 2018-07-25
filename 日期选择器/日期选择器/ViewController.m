//
//  ViewController.m
//  日期选择器
//
//  Created by teacher on 16/9/26.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIDatePicker *picker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIDatePicker *picker = [[UIDatePicker alloc]init];
    picker.datePickerMode = UIDatePickerModeDate;
    
    UIToolbar *inputTool = [[UIToolbar alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height - 64, self.view.frame.size.width, 44)];
    inputTool.backgroundColor = [UIColor blueColor];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(getDate)];
    inputTool.items = @[item];
    
    //设置弹出的键盘
    self.birthday.inputView = picker;
    //设置键盘上方的工具条
    self.birthday.inputAccessoryView = inputTool;
    
    
    self.picker = picker;
    
}

-(void)getDate
{
    [self.view endEditing:YES];
    
    //日期格式化器
    //1、创建格式化器
    NSDateFormatter *formmater = [[NSDateFormatter alloc]init];
    
    
    //2、设置想要的日期格式  XXXX年XX月XX日 XX时XX分XX秒
    
    //[formmater setDateFormat:@"yyyy年MM月dd日 hh:mm:ss"];
    [formmater setDateFormat:@"yyyy-MM-dd"];
    
    //3、用格式化器去格式化日期

    self.birthday.text = [formmater stringFromDate:self.picker.date];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)datepicker:(UIDatePicker *)sender {
    
   //NSLog(@"%@", sender.date);
    
    //日期格式化器
    //1、创建格式化器
    NSDateFormatter *formmater = [[NSDateFormatter alloc]init];
    
    
    //2、设置想要的日期格式  XXXX年XX月XX日 XX时XX分XX秒
    
    //[formmater setDateFormat:@"yyyy年MM月dd日 hh:mm:ss"];
    [formmater setDateFormat:@"yyyy/MM/dd"];
    
    //3、用格式化器去格式化日期
    self.selectedTime.text = [formmater stringFromDate:sender.date];

}
@end
