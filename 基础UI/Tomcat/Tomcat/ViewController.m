//
//  ViewController.m
//  Tomcat
//
//  Created by teacher on 16/9/14.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//  可以将多个按钮的action拖拽到一个方法里

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //动画图片数组
    self.imgArray = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tomAnimationWithName:(NSString *)name count:(NSInteger)count{
    
    
    //判断数组里面是否有图片
    if(self.imgArray.count > 0){
    
        [self.imgArray removeAllObjects];
    
    }
    
    //判断是否在动画
    if([self.tomcatImg isAnimating]) return;
    
    
    //找到图片 添加到数组
    for (int i = 0 ; i<= count ; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d.jpg",name,i];
        
        UIImage *image = [UIImage imageNamed:imageName];
        
        [self.imgArray addObject:image];
    }
    
    //设置动画数组
    self.tomcatImg.animationImages = self.imgArray;
    
    //重复一次
    self.tomcatImg.animationRepeatCount = 1;
    
    //动画时长
    self.tomcatImg.animationDuration = self.tomcatImg.animationImages.count * 0.075;
    
    //开始动画
    [self.tomcatImg startAnimating];
    
}


//巧妙运用title作为图片的名字，tag作为图片的张数
- (IBAction)tomcatAnim:(UIButton *)sender {
    
    [self tomAnimationWithName:sender.currentTitle count:sender.tag];

}
@end
