//
//  ViewController.h
//  UISegmentControl 分断
//
//  Created by teacher on 16/9/21.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)changeFlower:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *flowerImg;

@end

