//
//  ViewController.m
//  UIActivityIndicatorView、UIProgressView案例
//
//  Created by stu1 on 2018/9/30.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicatorView;

@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.indicatorView startAnimating];
    
    NSLog(@"拼命加载数据");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //延迟3秒后停止旋转动画
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        
        NSLog(@"数据加载成功");
        
        if(self.indicatorView.isAnimating){
            
            [self.indicatorView stopAnimating];
            
            //[self.indicatorView removeFromSuperview];
            
            self.indicatorView.hidden = YES;
            
        }
        
    });
    
    
    
    
    
    
    //UIView动画
    //Duration：多少秒执行
    //animations：动画执行的操作
    //completion：动画执行完毕以后想做的事情
    
    
//    UIView动画可以设置的动画属性有:
//    1、大小变化(frame)
//    2、拉伸变化(bounds)
//    3、中心位置(center)
//    4、旋转(transform)
//    5、透明度(alpha)
//    6、背景颜色(backgroundColor)
//    7、拉伸内容(contentStretch)
//    而这个属性不支持 所以会立马回调completion
    [UIView animateWithDuration:3.0 animations:^{

        [self.progressView setProgress:1.0 animated:YES];
        
       // self.progressView.frame = CGRectMake(0, 0, 100, 10);


    } completion:^(BOOL finished) {

        NSLog(@"动画执行完毕");

    }];
    
    
    
}
@end
