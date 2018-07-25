//
//  NViewController.m
//  
//
//  Created by teacher on 16/11/15.
//
//

#import "NViewController.h"

@implementation NViewController


-(void)viewDidLoad{
    [super viewDidLoad];

    
    self.tabBarItem.title = @"蓝色";
    
    self.tabBarItem.image = [UIImage imageNamed:@"htl_icon_sleep_gray"];
    
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"htl_icon_sleep_green"];
    
    self.tabBarItem.badgeValue = @"4";
    
}
@end
