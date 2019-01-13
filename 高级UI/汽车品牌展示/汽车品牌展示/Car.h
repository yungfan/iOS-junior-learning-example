//
//  Car.h
//  
//
//  Created by teacher on 16/10/25.
//
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

//车标
@property(nonatomic, strong) NSString *icon;
//车名
@property(nonatomic,strong)  NSString *name;

-(instancetype)initWithDic:(NSDictionary *)dic;

@end
