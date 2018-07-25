//
//  SecondViewController.m
//  
//
//  Created by teacher on 16/11/14.
//
//

#import "SecondViewController.h"

@implementation SecondViewController

-(void)viewDidLoad{

    self.view.backgroundColor = [UIColor blueColor];
    
    
    
    //会覆盖掉上个界面赋值的backBarButtonItem
    UIBarButtonItem *scan = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"ugcsubmit_back_green"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
    self.navigationItem.leftBarButtonItem = scan;
}

-(void)back{
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
