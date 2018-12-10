//
//  ViewController.m
//  plist数据解析
//
//  Created by stu1 on 2018/12/10.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+Extension.h"
#import "NSArray+Extension.h"

@interface ViewController ()

@property (nonatomic, strong) NSDictionary<NSString *, NSArray<NSString *> *> *data;
@property (nonatomic, strong) NSArray *cities;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //读取plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cityData.plist"ofType:nil];
    
    self.data = [NSDictionary dictionaryWithContentsOfFile:path];
    
    //打印
    NSLog(@"%@", [[self.data allKeys] descriptionWithLocale:[NSLocale localeWithLocaleIdentifier:@"zh_CN"]]);
    
    //通过key获取某个省份的城市
    NSString *key  = [self.data allKeys][31];
    
    self.cities =  self.data[key];
    
    NSLog(@"%@", [self.cities descriptionWithLocale:[NSLocale localeWithLocaleIdentifier:@"zh_CN"]]);
    
    //写入plist
    NSString *dataPath =  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"123.plist"];
    
    [self.cities writeToFile:dataPath  atomically:YES];
   
}


@end
