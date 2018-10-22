//
//  ViewController.m
//  UIScrollView案例
//
//  Created by stu1 on 2018/10/15.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@property(strong, nonatomic) UIImageView *imgView;

- (IBAction)scrollLittle:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *city = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"city.jpeg"]];
    
    self.imgView = city;
    
    //contentSize 决定了滚动视图内容的大小，如果这个内容超过了屏幕的大小，就可以滚动；如果比屏幕小，则不滚动。宽度决定水平滚动，高度决定垂直滚动。如果某个方向不需要滚动，则对应的尺寸可以设置为0
    self.scrollView.contentSize = CGSizeMake(1920, 1080);
    
    
    //contentInset设置内容的内边距
    self.scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    
    
    self.scrollView.delegate = self;
    
    
    [self.scrollView addSubview:city];

    
    
}


- (IBAction)scrollLittle:(id)sender {
    
    
    //ContentOffset 设置手机屏幕可视的滚动区域
    //先获取目前的ContentOffset
    CGPoint preContentOffset = self.scrollView.contentOffset;
    
    //加一点点
    CGPoint contentOffset =  CGPointMake(preContentOffset.x + 10, preContentOffset.y + 10);
    
    //重新设置ContentOffset
    [self.scrollView setContentOffset:contentOffset animated:YES];
}

#pragma mark - UIScrollViewDelegate
//滚动时调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

    //NSLog(@"%s", __func__);

    NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));


}

//最开始调用的开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"%s", __func__);

}

//即将结束拖拽
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"%s", __func__);

}
//结束拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{

    NSLog(@"%s", __func__);
}

//开始减速
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%s", __func__);

}

//结束减速
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{

    NSLog(@"%s", __func__);
}




//缩放就会调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
    NSLog(@"%s", __func__);
}

//缩放的是哪一个控件
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return self.imgView;
}

//即将开始缩放
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view{
    
    NSLog(@"%s", __func__);
    
}

//已经缩放
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale{
    NSLog(@"%s", __func__);
    
}


//默认情况下点击状态栏是可以滚到顶部的   默认返回YES
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    
    return NO;
    
}

@end
