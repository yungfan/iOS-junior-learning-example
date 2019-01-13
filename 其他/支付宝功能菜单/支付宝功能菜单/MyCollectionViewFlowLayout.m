//
//  MyCollectionViewFlowLayout.m
//  支付宝功能菜单
//
//  Created by teacher on 17/5/4.
//  Copyright © 2017年 安徽商贸职业技术学院. All rights reserved.
//

#import "MyCollectionViewFlowLayout.h"

@implementation MyCollectionViewFlowLayout

-(void)prepareLayout{

    self.minimumLineSpacing = 1;//垂直间距
    self.minimumInteritemSpacing = 0;//水平间距
    
    self.sectionInset = UIEdgeInsetsMake(0, 0, 8, 0);//分组间距

}

@end
