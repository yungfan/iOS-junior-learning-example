//
//  SecViewController.m
//  控制器逆向传值
//
//  Created by stu1 on 2018/11/21.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "SecViewController.h"





@interface SecViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputTf;

- (IBAction)passValueBtnClick:(id)sender;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)passValueBtnClick:(id)sender {
    
    [self.delegate passValue:self.inputTf.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
