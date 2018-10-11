//
//  ViewController.m
//  UIToolBar、UINavigationBar案例
//
//  Created by stu1 on 2018/10/8.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)toolBarButtonClicked:(id)sender;

- (IBAction)navigationBarButtonClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationBar.items.firstObject.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon"]];
}


- (IBAction)toolBarButtonClicked:(id)sender {
    
     NSLog(@"%s", __func__);
}

- (IBAction)navigationBarButtonClicked:(id)sender {
    
     NSLog(@"%s", __func__);
}
@end
