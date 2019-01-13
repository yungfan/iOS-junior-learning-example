//
//  CarBookDAO.m
//  封装数据库的操作
//
//  Created by teacher on 16/12/28.
//  Copyright © 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "CarBookDAO.h"
#import "DBUtils.h"
#import "FMDB.h"

@implementation CarBookDAO


+(void)addCarBook:(CarBook *)carbook{
    
    FMDatabase *db = [DBUtils openDataBase];
    
   
    NSString *sql = @"insert into t_carbook(bz, fkfs, gls, xfje, xmmc, date) values(?, ?, ?, ?, ?, ?)";
    
    // ... 代表可变参数
    BOOL result = [db executeUpdate:sql, carbook.bz, carbook.fkfs, carbook.gls, carbook.xfje, carbook.xmmc, carbook.date];
    
    if(result){
        
        NSLog(@"增加记录成功");
        
    }
    
    [DBUtils closeDataBase];
 
}

//id我们并没有创建并保存，而是数据库自增长的一个字段，现在需要用它，必须去数据库中查找
+(void)updateCarBook:(int)carbookId{
    
    FMDatabase *db = [DBUtils openDataBase];
    
    NSString *sql = @"update t_carbook set xfje = ? where id = ?";
    
    // ... 代表可变参数
    BOOL result = [db executeUpdate:sql, @2000, @(carbookId)];
    
    if(result){
        
        NSLog(@"修改记录成功");
        
    }

    [DBUtils closeDataBase];
    
    
}

+(void)deleteCarBook:(int)carbookId{
    
    FMDatabase *db = [DBUtils openDataBase];

    
    NSString *sql = @"delete from t_carbook where id = ?";
    
    // ... 代表可变参数
    BOOL result = [db executeUpdate:sql, @(carbookId)];
    
    if(result){
        
        NSLog(@"删除记录成功");
        
    }

    [DBUtils closeDataBase];
    
    
}

+(CarBook *)queryCarBook:(id)carbookId{
    
    return nil;
    
}

+(NSArray *)queryAll{
    
    FMDatabase *db = [DBUtils openDataBase];
    
    NSString *sql = @"select * from t_carbook";
    
    FMResultSet *result = [db executeQuery:sql];
    
    while (result.next) {
        
        //bz, fkfs, gls, xfje, xmmc, date
        
        int carbookId = [result intForColumn:@"id"];
        
        NSString *bz = [result stringForColumn:@"bz"];
        NSString *fkfs = [result stringForColumn:@"fkfs"];
        NSString *gls = [result stringForColumn:@"gls"];
        NSString *xfje = [result stringForColumn:@"xfje"];
        NSString *xmmc = [result stringForColumn:@"xmmc"];
        NSString *date = [result stringForColumn:@"date"];
        
        
        NSLog(@"%d--%@--%@--%@--%@--%@--%@", carbookId, bz, fkfs, gls, xfje, xmmc, date);
        
    }


    [DBUtils closeDataBase];

    return nil;
}

@end
