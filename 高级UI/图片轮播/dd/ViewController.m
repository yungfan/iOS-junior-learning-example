//
//  ViewController.m
//  dd
//
//  Created by teacher on 16/10/12.
//  Copyright (c) 2016年 安徽商贸职业技术学院. All rights reserved.
//


//屏幕宽度
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//图片高度
#define IMG_HEIGHT 160
//图片总数
#define MAX_SIZE 7

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *sc;
@property (weak, nonatomic) IBOutlet UIPageControl *pageIndicator;

//要展示的图片数组
@property(strong, nonatomic) NSMutableArray *imgArray;

@end

@implementation ViewController

//懒加载
-(NSMutableArray *)imgArray
{
    if(_imgArray == nil)
    {
        _imgArray = [[NSMutableArray alloc]initWithCapacity:MAX_SIZE];
        //在要展示的5张图片的前后各加一张图片，第一张前面加第五张，第五张后面加第一张
        [_imgArray addObject:[UIImage imageNamed:@"img_05"]];
        for (int i = 1; i< MAX_SIZE - 1; i++) {
            NSString *imgName = [[NSString alloc]initWithFormat:@"img_0%d", i];
            [_imgArray addObject:[UIImage imageNamed:imgName]];
        }
        [_imgArray addObject:[UIImage imageNamed:@"img_01"]];
    
    }
    
    return _imgArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建UIImageView并添加到UIScrollView中
    for (int i = 0; i< MAX_SIZE; i++) {
        UIImageView *img = [[UIImageView alloc]initWithImage:[self.imgArray objectAtIndex:i]];
        img.frame = CGRectMake(SCREEN_WIDTH * i, 0, SCREEN_WIDTH, IMG_HEIGHT);
        [self.sc addSubview:img];
    }
    
    //设置UIScrollView的属性
    self.sc.contentSize = CGSizeMake(SCREEN_WIDTH * self.imgArray.count, IMG_HEIGHT);
    self.sc.showsHorizontalScrollIndicator = NO;
    self.sc.pagingEnabled = YES;
    //刚开始应该滚动到第二张显示，因为第一张其实是最后一张图片
    [self.sc setContentOffset:CGPointMake(SCREEN_WIDTH, 0) animated:YES];
    
}


-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //获取当前UIScrollView的位置
    CGPoint offset = [scrollView contentOffset];
    //算出滚动到第几页
    int currentPage = offset.x/SCREEN_WIDTH;
    //设置UIPageControl
    self.pageIndicator.currentPage = currentPage - 1;
    //对最后一张和第一张要进行特殊处理
    //1、如果是第一张
    if (currentPage == 0) {
        
        //下面两个方法任选其一都可以达到效果，但是注意动画一定要设置为NO，不然会有视觉会有辣眼睛的感觉
        //方法1
        [self.sc setContentOffset:CGPointMake(SCREEN_WIDTH * (MAX_SIZE-2), 0) animated:NO];
        //方法2，该方法要求设置contentSize时，任一方向就算不滚动也不能为0，否则无效
        //[self.sc scrollRectToVisible:CGRectMake(SCREEN_WIDTH * (MAX_SIZE-2), 0, SCREEN_WIDTH, IMG_HEIGHT) animated:NO];
        self.pageIndicator.currentPage = MAX_SIZE - 2;
    }
    
    //2、如果是最后一张
    else if(currentPage == MAX_SIZE - 1)
    {
        [self.sc setContentOffset:CGPointMake(SCREEN_WIDTH, 0) animated:NO];
        //[self.sc scrollRectToVisible:CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, IMG_HEIGHT) animated:NO];
        self.pageIndicator.currentPage = 0;
    }
}

@end
