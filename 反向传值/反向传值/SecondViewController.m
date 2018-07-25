//
//  SecondViewController.m
//  
//
//  Created by teacher on 16/11/27.
//
//

#import "SecondViewController.h"

@interface SecondViewController()

@property (weak, nonatomic) IBOutlet UITextField *content;


@end


@implementation SecondViewController

-(void)viewDidLoad{
    [super viewDidLoad];
}

- (IBAction)ss:(id)sender {
    
    NSString *input = self.content.text;
    
    [self.delegate chuanzhi:input];
    
    [self.navigationController popViewControllerAnimated:YES];

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [self.view endEditing:YES];

}
@end
