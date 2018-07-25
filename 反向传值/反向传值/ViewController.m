//
//  ViewController.m
//  反向传值
//
//  Created by teacher on 16/11/27.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <SecondProtocal>

@property (weak, nonatomic) IBOutlet UILabel *info;
- (IBAction)next:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)chuanzhi:(NSString *)input{
    
    self.info.text = input;
}

- (IBAction)next:(id)sender {
    
    SecondViewController *svc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"second"];
    
    //设置被代理对象的代理属性是在代理对象中完成的
    svc.delegate = self;
    
    [self.navigationController pushViewController:svc animated:YES];
}
@end
