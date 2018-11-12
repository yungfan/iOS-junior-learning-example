//
//  ViewController.m
//  UICollectionView的简单使用
//
//  Created by stu1 on 2018/11/9.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //布局样式
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat cellW = (width - 5*3)*0.5;
    
    //cell大小
    layout.itemSize = CGSizeMake(cellW, cellW);
    //cell间距
    layout.minimumInteritemSpacing = 5;
    //行间距
    layout.minimumLineSpacing = 5;
    //四周的边距
    layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5);
    
    self.collectionView.collectionViewLayout = layout;
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"abc" forIndexPath:indexPath];
    
    
    return cell;
    
}


- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"您点击了%ld", indexPath.row);
    
}

@end
