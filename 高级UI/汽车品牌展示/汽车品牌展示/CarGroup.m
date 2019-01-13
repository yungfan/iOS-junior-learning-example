//
//  CarGroup.m
//  
//
//  Created by teacher on 16/10/25.
//
//

#import "CarGroup.h"
#import "Car.h"

@implementation CarGroup

//KVC
-(instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    
    if (self) {
        
        //取标题
        self.title = dic[@"title"];
        //取里面的车
        NSArray *cars = dic[@"cars"];
        
        NSMutableArray *array = [NSMutableArray array];
        
        //封装成对象Car
        for (int i = 0; i<cars.count; i++) {
            Car *car = [[Car alloc]initWithDic:[cars objectAtIndex:i]];
            [array addObject:car];
        }
        
        self.cars = array;
    }
    
    return self;
}


@end
