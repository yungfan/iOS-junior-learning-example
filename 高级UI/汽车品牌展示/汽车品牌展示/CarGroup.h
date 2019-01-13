//
//  CarGroup.h
//  
//
//  Created by teacher on 16/10/25.
//
//

#import <Foundation/Foundation.h>


//plist文件下面对应的一个NSString和NSArray的封装

@interface CarGroup : NSObject

@property(nonatomic, strong) NSString *title;

@property(nonatomic,strong)  NSArray *cars;

-(instancetype)initWithDic:(NSDictionary *)dic;

@end
