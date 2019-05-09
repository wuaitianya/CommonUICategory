//
//  UIScrollView+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIScrollView+PRZCommon.h"

@implementation UIScrollView (PRZCommon)
+(instancetype)initializeScrollViewWithFrame:(CGRect)frame withBgColor:(UIColor *)aColor withContentSize:(CGSize)aSize withSuperView:(UIView*)superView{
    UIScrollView *aScrollview = [[self alloc] initWithFrame:frame];
    aScrollview.contentSize = aSize;
    aScrollview.bounces = NO;
    aScrollview.backgroundColor = aColor;
    [superView addSubview:aScrollview];
    return aScrollview;
}
@end
