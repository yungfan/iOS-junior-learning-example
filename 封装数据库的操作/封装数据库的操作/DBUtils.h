//
//  DBUtils.h
//  封装数据库的操作
//
//  Created by teacher on 16/12/28.
//  Copyright © 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB.h"

@interface DBUtils : NSObject

+(FMDatabase *)openDataBase;

+(void)createTable;

+(void)closeDataBase;

@end
