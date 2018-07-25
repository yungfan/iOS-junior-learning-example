//
//  SViewController.m
//  
//
//  Created by teacher on 16/11/15.
//
//

#import "SViewController.h"

@implementation SViewController


-(void)viewDidLoad{
    [super viewDidLoad];

    self.tabBarItem.title = @"橘色";
    
    self.tabBarItem.image = [UIImage imageNamed:@"htl_icon_sleep_gray"];
    
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"htl_icon_sleep_green"];
    
    self.tabBarItem.badgeValue = @"2";
    
}
@end
