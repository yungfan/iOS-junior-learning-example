//
//  CommonView.m
//  XIB创建View的使用
//
//  Created by stu1 on 2018/11/16.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "CommonView.h"

@implementation CommonView

- (IBAction)changed:(id)sender {
    
    NSLog(@"开关状态改变");
}

+(CommonView *)commonView{
    
    
    CommonView *view = [[[NSBundle mainBundle] loadNibNamed:@"Common" owner:nil options:nil] firstObject];
    
    return view;
    
}

@end
