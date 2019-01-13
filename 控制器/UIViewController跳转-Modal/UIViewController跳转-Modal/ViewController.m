//
//  ViewController.m
//  UIViewController跳转-Modal
//
//  Created by stu1 on 2018/11/16.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)toSecVC:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}


- (IBAction)toSecVC:(id)sender {
    
    UIStoryboard *storyBoard =  [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *secVC = [storyBoard instantiateViewControllerWithIdentifier:@"abc"];
    
    
    //Modal方式跳转到下一个界面
    //手动型跳转(可以实现条件过滤)和自动型跳转
    [self presentViewController:secVC animated:YES completion:nil];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //StoryBoard中的那些线是UIStoryboardSegue对象
    [self performSegueWithIdentifier:@"abc" sender:nil];
    
}
@end
