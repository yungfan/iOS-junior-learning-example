//
//  Person.h
//  
//
//  Created by teacher on 16/11/29.
//
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCoding>

@property(nonatomic,assign) int age;
@property(nonatomic, copy) NSString *name;

@end
