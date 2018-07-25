//
//  CarBook.h
//  LoveCarBook
//
//  Created by 刘雪涛 on 16/12/17.
//  Copyright © 2016年 刘雪涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarBook : NSObject

@property (nonatomic, assign) int bookId;//序号
@property (nonatomic, copy)  NSString *bz;//备注
@property (nonatomic, copy)  NSString *fkfs;//付款方式
@property (nonatomic, copy)  NSString *gls;//公里数
@property (nonatomic, copy)  NSString *xfje;//消费金额
@property (nonatomic, copy)  NSString *xmmc;//项目名称
@property (nonatomic, copy)  NSString *date;//日期

- (instancetype)initWithBZ:(NSString*) bz andFkfs: (NSString *) fkfs andGls: (NSString *) gls andXfje:(NSString *)xfje andXmmc: (NSString *) xmmc andDate: (NSString *)date;

@end
