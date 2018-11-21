//
//  ViewController.m
//  控制器逆向传值
//
//  Created by stu1 on 2018/11/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()<passValueProtocol>

@property (weak, nonatomic) IBOutlet UILabel *infoLb;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    SecViewController *sec = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    
    sec.delegate = self;
    
    [self presentViewController:sec animated:YES completion:nil];
    
    
}


- (void)passValue:(nonnull NSString *)info {
    
    self.infoLb.text = info;
    
}

@end
