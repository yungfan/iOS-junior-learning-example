//
//  ViewController.h
//  iOS-09-01
//
//  Created by teacher on 16/6/12.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//需要操作的控件 、 控件有事件产生的



//@property 拖过来的时候有一个IBOutlet的标志 就是SB中的控件
@property (weak, nonatomic) IBOutlet UITextField *num1;

@property (weak, nonatomic) IBOutlet UITextField *num2;

@property (weak, nonatomic) IBOutlet UILabel *result;




//IBAction捕捉的不是控件 而是控件产生的方法（事件）它是一个方法
//sender其实就是当前点击的那个控件
- (IBAction)jisuan:(id)sender;


@end

