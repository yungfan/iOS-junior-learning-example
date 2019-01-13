//
//  ViewController.m
//  UIView动画
//
//  Created by stu1 on 2018/12/21.
//  Copyright © 2018年 abc. All rights reserved.
//  动画：1.UIView动画  2.核心动画（Core Animation、Layer）

//支持的属性
//@property frame
//@property bounds
//@property center
//@property transform
//@property alpha
//@property backgroundColor


#import "ViewController.h"

@interface ViewController (){
    
    int angle;
    
}

@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *orangeView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *greedView;

@property (weak, nonatomic) IBOutlet UIImageView *pinWheel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.redView.backgroundColor =  [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.orangeView = [[UIView alloc]initWithFrame:CGRectMake(0, 150, 50, 50)];
    self.orangeView.backgroundColor =  [UIColor orangeColor];
    [self.view addSubview:self.orangeView];
    
    self.blueView = [[UIView alloc]initWithFrame:CGRectMake(0, 300, 50, 50)];
    self.blueView.backgroundColor =  [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.greedView = [[UIView alloc]initWithFrame:CGRectMake(0, 450, 50, 50)];
    self.greedView.backgroundColor =  [UIColor greenColor];
    [self.view addSubview:self.greedView];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    //1. 最简单的动画 第一个参数：动画时间 第二个Block就是写动画的最终效果 中间的过渡由系统自动完成
    [UIView animateWithDuration:5.0 animations:^{
        
    }];
    
    //2. 多一个参数 动画完成之后的操作
    /*
     [UIView animateWithDuration:3.0 animations:^{
     self.redView.frame = CGRectMake(200, 200, 100, 100);
     self.redView.backgroundColor = [UIColor blueColor];
     self.redView.alpha = 0.5;
     } completion:^(BOOL finished) {
     
     NSLog(@"动画完成");
     }]; */
    
    
    //3. 多两个参数：delay（延迟）、options（动画选项）
    //对比四种选项（说白了就是动画执行的快慢）
    //UIViewAnimationOptionCurveEaseInOut //时间曲线函数，由慢到快
    //UIViewAnimationOptionCurveEaseIn //时间曲线函数，由慢到特别快
    //UIViewAnimationOptionCurveEaseOut //时间曲线函数，由快到慢
    //UIViewAnimationOptionCurveLinear //时间曲线函数，匀速
    /*
     [UIView animateWithDuration:5.0 delay:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
     
     self.redView.frame = CGRectMake(400, 0, 50, 50);
     
     } completion:nil];
     
     [UIView animateWithDuration:5.0 delay:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
     
     self.orangeView.frame = CGRectMake(400, 150, 50, 50);
     
     } completion:nil];
     
     [UIView animateWithDuration:5.0 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
     
     self.blueView.frame = CGRectMake(400, 300, 50, 50);
     
     } completion:nil];
     
     [UIView animateWithDuration:5.0 delay:1.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
     
     self.greedView.frame = CGRectMake(400, 450, 50, 50);
     
     } completion:nil];
     
     
     //弹簧动画
     [UIView animateWithDuration:5.0 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
     
     self.redView.frame = CGRectMake(200, 0, 50, 50);
     
     
     } completion:nil];
     
     */
    
    
    
    [UIView animateWithDuration:2.0 animations:^{
        
        //平移
        //self.pinWheel.transform = CGAffineTransformMakeTranslation(100, 100);
        //self.pinWheel.transform = CGAffineTransformTranslate(self.pinWheel.transform, 100, 100);
        
        //旋转
        //self.pinWheel.transform = CGAffineTransformMakeRotation(M_PI_4);
        //self.pinWheel.transform = CGAffineTransformRotate(self.pinWheel.transform, M_PI_2);
        
        //缩放
        //self.pinWheel.transform = CGAffineTransformMakeScale(0.5, 0.5);
        //self.pinWheel.transform = CGAffineTransformScale(self.pinWheel.transform, 0.5, 0.5);
    }];
    
    //无限旋转动画
    [self rotate];
}

//无限旋转-UIView动画方式
-(void)rotate{

    // 执行动画
    [UIView animateWithDuration:1.0
                          delay:0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.pinWheel.transform = CGAffineTransformRotate(self.pinWheel.transform, M_PI);
                     }
                     completion:^(BOOL finished){
                         //关键点：在动画结束的时候再次开始动画
                         [self rotate];
                     }];
    
    
}

//无限旋转——核心动画方式
-(void)rotate2{
    
    CABasicAnimation *rotationAnimation =[CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    rotationAnimation.toValue = @(2*M_PI);
    
    rotationAnimation.duration = 1;
    
    rotationAnimation.removedOnCompletion = false;
    
    rotationAnimation.repeatCount = MAXFLOAT;
    
    [self.pinWheel.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
    
}


@end
