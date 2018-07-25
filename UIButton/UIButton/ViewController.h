//
//  ViewController.h
//  UIButton
//
//  Created by teacher on 16/9/13.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)btnClicked:(id)sender;

@end

