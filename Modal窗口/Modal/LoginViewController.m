//
//  LoginViewController.m
//  
//
//  Created by teacher on 16/11/22.
//
//

#import "LoginViewController.h"

@interface LoginViewController ()
- (IBAction)loginSuccess:(id)sender;


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginSuccess:(id)sender {
    
    //自己把自己dismiss
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
