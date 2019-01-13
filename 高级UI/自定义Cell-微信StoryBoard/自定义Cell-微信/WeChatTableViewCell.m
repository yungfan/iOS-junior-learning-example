//
//  WeChatTableViewCell.m
//  自定义Cell-微信
//
//  Created by stu1 on 2018/10/31.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "WeChatTableViewCell.h"

@implementation WeChatTableViewCell

-(void)configUI{
    
    self.pic.image = [UIImage imageNamed:self.wechat.picName];
    self.title.text = self.wechat.titleText;
    self.time.text = self.wechat.timeText;
    self.content.text = self.wechat.contentText;
    
}

@end
