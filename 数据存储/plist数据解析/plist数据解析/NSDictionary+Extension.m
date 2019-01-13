//
//  NSDictionary+NSDictionary_Extension.m
//  plist数据解析
//
//  Created by stu1 on 2018/12/10.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "NSDictionary+Extension.h"

@implementation NSDictionary (Extension)
-(NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *msr = [NSMutableString string];
    [msr appendString:@"{"];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [msr appendFormat:@"\n\t%@ = %@,",key,obj];
    }];
    //去掉最后一个逗号（,）
    if ([msr hasSuffix:@","]) {
        NSString *str = [msr substringToIndex:msr.length - 1];
        msr = [NSMutableString stringWithString:str];
    }
    [msr appendString:@"\n}"];
    return msr;
}
@end
