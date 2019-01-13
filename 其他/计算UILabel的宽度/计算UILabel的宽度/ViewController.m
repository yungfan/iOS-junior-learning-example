//
//  ViewController.m
//  计算UILabel的宽度
//
//  Created by teacher on 16/11/17.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 长字符串
    NSString *str = @"日落时分，沏上一杯山茶，听一曲意境空远的《禅》，心神随此天籁，沉溺于玄妙的幻境里。仿佛我就是那穿梭于葳蕤山林中的一只飞鸟，时而盘旋穿梭，时而引吭高歌；仿佛我就是那潺潺流泻于山涧的一汪清泉，涟漪轻盈，浩淼长流；仿佛我就是那竦峙在天地间的一座山峦，伟岸高耸，从容绵延。我不相信佛，只是喜欢玄冥空灵的梵音经贝，与慈悲淡然的佛境禅心，在清欢中，从容幽静，自在安然。一直向往走进青的山，碧的水，体悟山水的绚丽多姿，领略草木的兴衰荣枯，倾听黄天厚土之声，探寻宇宙自然的妙趣。走进了山水，也就走出了喧嚣，给身心以清凉，给精神以沉淀，给灵魂以升华。";
    
    [self heightForLabel:str];
   

    
    
//        // 短字符串
//        NSString *str = @"日落时分，沏上一杯山茶，听一曲意境空远的《禅》，心神随此天籁，沉溺于玄妙的幻境里。仿佛我就是那穿梭于葳蕤山林中的一只飞鸟，时而盘旋穿梭，时而引吭高歌。";
//    
//        [self heightForLabel:str];


  
    

}

-(void)heightForLabel:(NSString *)str{

    // 初始化label
    UILabel *label = [[UILabel alloc]init];
    // 设置内容
    label.text = str;
    // 换行
    label.numberOfLines = 0;
    // 字体
    label.font = [UIFont fontWithName:nil size:17];
    
    //动态计算高度 宽度在300范围内计算
    CGRect  oneT = [str boundingRectWithSize:CGSizeMake(300, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{ NSFontAttributeName :label.font} context:nil];
    
    
    NSLog(@"%@", NSStringFromCGRect(oneT));
    
    //最后设置尺寸
    label.frame= oneT;
    label.center = CGPointMake(self.view.center.x, label.center.y + 20);
    
    //添加内容到父视图
    [self.view addSubview:label];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
