//
//  ViewController.h
//  Tomcat
//
//  Created by teacher on 16/9/14.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)tomcatAnim:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *tomcatImg;

@property(nonatomic, strong) NSMutableArray *imgArray;

@end

