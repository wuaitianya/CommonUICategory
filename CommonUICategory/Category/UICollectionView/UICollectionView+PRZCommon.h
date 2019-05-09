//
//  UICollectionView+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (PRZCommon)
//初始化一个UICollectionView 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UICollectionView来调用,会走自定义的UICollectionView中重写的 initWithFrame 方法)
 UICollectionViewFlowLayout *layout = [UICollectionView initializeCollectioinViewFlowLayoutWithItemSize:CGSizeMake(90, 90)
 withMinInterItemSpace:10
 withMinLineSpace:10
 withSectionInsaet:UIEdgeInsetsMake(10, 10, 10, 10)
 withDirection:UICollectionViewScrollDirectionVertical];
 
 [UICollectionView initializeCollectionViewWithFrame:CGRectMake(10, 100, 300, 200)
 withLayout:layout
 withRegisterCellClass:[UICollectionViewCell class]
 withReuseIdentifier:@"cell"
 withDelegate:self
 withBgColor:[UIColor whiteColor]
 withSuperView:self.view];
 
 */

//获取 UICollectionViewFlowLayout
+(UICollectionViewFlowLayout*)initializeCollectioinViewFlowLayoutWithItemSize:(CGSize)itemSize withMinInterItemSpace:(CGFloat)interSpace withMinLineSpace:(CGFloat)lineSpace withSectionInsaet:(UIEdgeInsets)sectioinInset withDirection:(UICollectionViewScrollDirection)direction;
//获取 UICollectionView  cellClass 、 identifier 、delegate 可以传nil，如果传nil,则不会注册cell，不会设置代理数据源
+(instancetype)initializeCollectionViewWithFrame:(CGRect)frame withLayout:(UICollectionViewFlowLayout*)layout withRegisterCellClass:(Class)cellClass withReuseIdentifier:(NSString*)identifier withDelegate:(id)delegate withBgColor:(UIColor*)color withSuperView:(UIView*)superView;
@end
