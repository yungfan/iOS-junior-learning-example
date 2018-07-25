//
//  ViewController.m
//  支付宝功能菜单
//
//  Created by teacher on 17/5/4.
//  Copyright © 2017年 安徽商贸职业技术学院. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewFlowLayout.h"

#define ScreenW [UIScreen mainScreen].bounds.size.width


@interface ViewController ()<UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建布局
    UICollectionViewLayout *layout = [[MyCollectionViewFlowLayout alloc]init];
    //初始化一个UICollectionView
    UICollectionView *collection = [[UICollectionView alloc]initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layout];
    //设置背景色
    collection.backgroundColor = [UIColor groupTableViewBackgroundColor];
    //设置代理
    collection.dataSource = self;
    collection.delegate = self;
    
    //注册两个不同类型的Cell
    [collection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell01"];
    [collection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell02"];
    
    [self.view addSubview:collection];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    if (section == 0) {
        
        return 12;
        
    } else if (section == 1){
        
        return 1;
        
    } else
        return 16;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        
        static NSString * CellIdentifier01 = @"UICollectionViewCell01";
        UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier01 forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor cyanColor];

        return cell;
        
    }

  
    static NSString * CellIdentifier02 = @"UICollectionViewCell02";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier02 forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    
    return cell;

}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 3;
}

//定义每个Item 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        
        return CGSizeMake(ScreenW, 100);
        
    }
    
    CGFloat W = (ScreenW - 3) / 4;
    
    return CGSizeMake(W, W);
    
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
}




@end
