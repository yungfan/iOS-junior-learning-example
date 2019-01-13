//
//  WeChat.m
//  自定义Cell-微信
//
//  Created by stu1 on 2018/11/5.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "WeChat.h"

@implementation WeChat
-(instancetype)initWithPicName:(NSString *)picName titleText:(NSString *)titleText timeText:(NSString *)timeText contentText:(NSString *)contentText{
    
    
    if (self = [super init]) {
        
        _picName = picName;
        _timeText = timeText;
        _titleText = titleText;
        _contentText = contentText;
        
    }
    
    
    return self;
}
@end
