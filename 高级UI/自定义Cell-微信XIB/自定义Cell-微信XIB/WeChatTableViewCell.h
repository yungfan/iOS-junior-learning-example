//
//  WeChatTableViewCell.h
//  自定义Cell-微信XIB
//
//  Created by stu1 on 2018/11/5.
//  Copyright © 2018年 abc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeChat.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeChatTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *pic;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *content;


@property (strong, nonatomic) WeChat *wechat;

-(void)configUI;
@end

NS_ASSUME_NONNULL_END
