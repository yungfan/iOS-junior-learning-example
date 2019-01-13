//
//  ViewController.m
//  UITextView案例
//
//  Created by stu1 on 2018/9/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *tv;

- (IBAction)sendMessage:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)sendMessage:(id)sender {
    
    NSLog(@"%@", self.tv.text);
}
@end
