//
//  NewsTableViewCell.h
//  
//
//  Created by teacher on 16/11/2.
//
//

#import <UIKit/UIKit.h>

@interface NewsTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *newsImg;
@property (weak, nonatomic) IBOutlet UILabel *newsResource;
@property (weak, nonatomic) IBOutlet UILabel *newsTime;
@property (weak, nonatomic) IBOutlet UILabel *newsTitle;
@property (weak, nonatomic) IBOutlet UILabel *newsRead;
@property (weak, nonatomic) IBOutlet UILabel *newsComment;

@end
