//
//  ViewController.m
//  StoryBoard补充2
//
//  Created by teacher on 16/11/23.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
- (IBAction)login:(id)sender;

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

- (IBAction)login:(id)sender {
    
    NSString *str = self.username.text;
    
    if ([str isEqualToString:@"yangfan"]) {
        //跳
        
        //执行该方法的时候会调用prepareForSegue 如下
        [self performSegueWithIdentifier:@"login" sender:nil];
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.username resignFirstResponder];

}


//跳转的时候会调用 ----- 传参
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender: (id)sender{

    
    SecondViewController *svc =  segue.destinationViewController;
    
    svc.username = self.username.text;
   
}

@end
