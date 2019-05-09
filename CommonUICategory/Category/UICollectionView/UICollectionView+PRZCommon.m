//
//  UICollectionView+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UICollectionView+PRZCommon.h"

@implementation UICollectionView (PRZCommon)

+(UICollectionViewFlowLayout*)initializeCollectioinViewFlowLayoutWithItemSize:(CGSize)itemSize withMinInterItemSpace:(CGFloat)interSpace withMinLineSpace:(CGFloat)lineSpace withSectionInsaet:(UIEdgeInsets)sectioinInset withDirection:(UICollectionViewScrollDirection)direction
{
    UICollectionViewFlowLayout *aLayout = [[UICollectionViewFlowLayout alloc] init];
    aLayout.itemSize = itemSize;
    aLayout.minimumInteritemSpacing = interSpace;
    aLayout.minimumLineSpacing = lineSpace;
    aLayout.sectionInset = sectioinInset;
    aLayout.scrollDirection = direction;
    return aLayout;
}


+(instancetype)initializeCollectionViewWithFrame:(CGRect)frame withLayout:(UICollectionViewFlowLayout*)layout withRegisterCellClass:(Class)cellClass withReuseIdentifier:(NSString*)identifier withDelegate:(id)delegate withBgColor:(UIColor*)color withSuperView:(UIView*)superView
{
    UICollectionView *aCollectionView = [[self alloc] initWithFrame:frame collectionViewLayout:layout];
    if (cellClass && identifier) {
        [aCollectionView registerClass:cellClass forCellWithReuseIdentifier:identifier];
    }
    if (delegate) {
        aCollectionView.delegate = delegate;
        aCollectionView.dataSource = delegate;
    }
    aCollectionView.backgroundColor = color;
    [superView addSubview:aCollectionView];
    return aCollectionView;
}
@end
