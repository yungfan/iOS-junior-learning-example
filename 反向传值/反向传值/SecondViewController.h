//
//  SecondViewController.h
//  
//
//  Created by teacher on 16/11/27.
//
//

#import <UIKit/UIKit.h>

@protocol SecondProtocal <NSObject>

-(void)chuanzhi:(NSString *)input;

@end


@interface SecondViewController : UIViewController

- (IBAction)ss:(id)sender;

@property(nonatomic, assign) id<SecondProtocal> delegate;

@end
