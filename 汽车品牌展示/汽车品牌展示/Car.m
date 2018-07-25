//
//  Car.m
//  
//
//  Created by teacher on 16/10/25.
//
//

#import "Car.h"

@implementation Car


//KVC
-(instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    
    if (self) {
        
        [self setValuesForKeysWithDictionary:dic];
    
    }
    
    return self;
}

@end
