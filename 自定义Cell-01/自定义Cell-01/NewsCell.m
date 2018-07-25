//
//  NewsCell.m
//  
//
//  Created by teacher on 16/11/1.
//
//

#import "NewsCell.h"


@implementation NewsCell

-(void)setNews:(News *)news{
    
    _news = news;
    
    self.newsImg.image = [UIImage imageNamed:news.newsImg];
    
    self.newsTitle.text = news.newsTitle;
    
    self.newsTime.text = news.newsTime;
    
    self.newsRead.text = news.newsRead;


}

@end
