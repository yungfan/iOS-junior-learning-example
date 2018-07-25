//
//  VButton.m
//  
//
//  Created by teacher on 16/9/19.
//
//

#import "VButton.h"

@implementation VButton

-(void)layoutSubviews
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示
    [self setTitleEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height ,-self.imageView.frame.size.width, 0.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
    [self setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0,0.0, -self.titleLabel.bounds.size.width)];//图片距离右边框距离减少图片的宽度，其它不边

}

@end
