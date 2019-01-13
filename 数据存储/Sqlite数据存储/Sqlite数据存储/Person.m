//
//  Person.m
//  Sqlite数据存储
//
//  Created by stu1 on 2018/12/14.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name Phone:(NSString *)phone Address:(NSString *)address{
    
    if (self = [super init]) {
        
        self.name = name;
        self.phone = phone;
        self.address = address;
        
    }
    
    return self;
}

-(NSString *)description{
    
    return  [NSString stringWithFormat:@"%@ -- %@ -- %@", self.name,self.phone,self.address ];
}
@end
