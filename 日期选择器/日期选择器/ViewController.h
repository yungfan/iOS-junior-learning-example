//
//  ViewController.h
//  日期选择器
//
//  Created by teacher on 16/9/26.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *selectedTime;
@property (weak, nonatomic) IBOutlet UITextField *birthday;

- (IBAction)datepicker:(UIDatePicker *)sender;

@end

