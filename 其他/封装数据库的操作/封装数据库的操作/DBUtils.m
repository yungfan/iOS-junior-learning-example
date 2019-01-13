//
//  DBUtils.m
//  封装数据库的操作
//
//  Created by teacher on 16/12/28.
//  Copyright © 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "DBUtils.h"
#import "FMDB.h"


static FMDatabase *_db;

@implementation DBUtils

#pragma mark - 打开数据库
+(FMDatabase *)openDataBase{
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSString *dbPath = [path stringByAppendingPathComponent:@"carbook.sqlite"];
    
    _db = [FMDatabase databaseWithPath:dbPath];
    
    if ([_db open]) {
        
        NSLog(@"打开数据库成功");
        
    } else{
        
        NSLog(@"打开数据库失败");
    }
    
    return _db;
    
}

+(void)createTable{
    
    [self openDataBase];
    
    NSString * sql = @"create table if not exists t_carbook(id integer primary key autoincrement, bz text, fkfs text, gls text, xfje text, xmmc text, date text)";
    
    BOOL result = [_db executeUpdate:sql];
    
    if(result){
        
        NSLog(@"创建表成功");
        
    }
    
    [self closeDataBase];
}


+(void)closeDataBase{

    [_db close];
}

@end
