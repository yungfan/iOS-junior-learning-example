//
//  LoginViewController.m
//  
//
//  Created by teacher on 16/11/21.
//
//

#import "LoginViewController.h"
#import "SuccessViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
- (IBAction)login:(id)sender;

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

- (IBAction)login:(id)sender {
    
    NSString *uname = self.username.text;
    
    NSLog(@"%@", uname);
    
    //顺传值
    //1、传给谁，谁必须创建一个传过去的值的类型的property
    
    //通过SB获取一个ViewController
    SuccessViewController *sc =  [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"success"];
    
    //2、将值赋值给上面的proerty
    sc.name = uname;

    //3、跳转
    [self.navigationController pushViewController:sc animated:YES];

}
@end
