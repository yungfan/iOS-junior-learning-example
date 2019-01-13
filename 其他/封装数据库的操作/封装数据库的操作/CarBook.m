//
//  CarBook.m
//  LoveCarBook
//
//  Created by 刘雪涛 on 16/12/17.
//  Copyright © 2016年 刘雪涛. All rights reserved.
//

#import "CarBook.h"

@implementation CarBook

- (instancetype)initWithBZ:(NSString*) bz andFkfs: (NSString *) fkfs andGls: (NSString *) gls andXfje:(NSString *)xfje andXmmc: (NSString *) xmmc andDate: (NSString *)date
{
    self =[super init];
    if (self) {
        self.bz = bz;
        self.fkfs = fkfs;
        self.gls = gls;
        self.xfje = xfje;
        self.xmmc = xmmc;
        self.date = date;
    }
    return self;
}
@end
