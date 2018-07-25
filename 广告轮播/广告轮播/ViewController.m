//
//  ViewController.m
//  广告轮播
//
//  Created by teacher on 16/10/17.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int i = 1; i<=5; i++) {
        
        NSString *imgName = [NSString stringWithFormat:@"img_0%d", i];
        
        UIImage *img = [UIImage imageNamed:imgName];
        
        
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake((i-1)*375, 0, 375, 180)];
        
        imgView.image = img;
        
        //UIImageView *imgView = [[UIImageView alloc]initWithImage:img];
        
        [self.scrollView addSubview:imgView];
        
        
    }
    
    self.scrollView.contentSize = CGSizeMake(5*375, 0);
    
    self.scrollView.pagingEnabled = YES;
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    
    //(0,0)0(375,0)1(375*2,0)2
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    NSLog(@"%s", __func__);
//}


//减速结束的完成的时候
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGPoint offset = scrollView.contentOffset;
    
    int page = offset.x/375;
    
    self.pageControl.currentPage = page;

}

@end
