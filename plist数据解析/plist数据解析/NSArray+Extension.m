//
//  NSArray+NSArray_Extension.m
//  plist数据解析
//
//  Created by stu1 on 2018/12/10.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)
-(NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *msr = [NSMutableString string];
    [msr appendString:@"["];
    for (id obj in self) {
        [msr appendFormat:@"\n\t%@,",obj];
    }
    //去掉最后一个逗号（,）
    if ([msr hasSuffix:@","]) {
        NSString *str = [msr substringToIndex:msr.length - 1];
        msr = [NSMutableString stringWithString:str];
    }
    [msr appendString:@"\n]"];
    return msr;
}
@end
