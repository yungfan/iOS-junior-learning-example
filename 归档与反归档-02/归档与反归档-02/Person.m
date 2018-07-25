//
//  Person.m
//  
//
//  Created by teacher on 16/11/29.
//
//

#import "Person.h"

@implementation Person


//你想怎么从归档文件里面还原对象
-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super init];
    
    if (self !=nil) {
        self.age = [aDecoder decodeIntForKey:@"age"];
       // self.name = [aDecoder decodeObjectForKey:@"name"];
    }
 
    
    return self;
}

//怎么样将对象归档到文件中
-(void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeInt:self.age forKey:@"age"];
    //[aCoder encodeObject:self.name forKey:@"name"];

}

@end
