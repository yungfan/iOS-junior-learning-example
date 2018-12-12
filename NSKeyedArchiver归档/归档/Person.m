//
//  Person.m
//  归档
//
//  Created by stu1 on 2018/12/12.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "Person.h"

@implementation Person

//针对里的所有属性进行编码和解码
//编码（序列化时调用）
- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    
    [aCoder encodeInt:self.age forKey:@"age"];
    [aCoder encodeObject:self.name forKey:@"name"];
    
    NSLog(@"%s", __func__);
    
}

//解码（反序列化时调用）
- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    
    if (self = [super init]) {
        
        self.age = [aDecoder decodeIntForKey:@"age"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
    }
    
     NSLog(@"%s", __func__);
    
    return self;
    
   
}

//支持安全编码
+ (BOOL)supportsSecureCoding {
    return YES;
}

@end
