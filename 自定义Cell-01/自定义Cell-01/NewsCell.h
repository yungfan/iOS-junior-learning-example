//
//  NewsCell.h
//  
//
//  Created by teacher on 16/11/1.
//
//

#import <UIKit/UIKit.h>
#import "News.h"

@interface NewsCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *newsImg;
@property (weak, nonatomic) IBOutlet UILabel *newsResource;
@property (weak, nonatomic) IBOutlet UILabel *newsTime;
@property (weak, nonatomic) IBOutlet UILabel *newsTitle;
@property (weak, nonatomic) IBOutlet UILabel *newsRead;
@property (weak, nonatomic) IBOutlet UILabel *newsComment;

@property(nonatomic, strong) News *news;

@end
