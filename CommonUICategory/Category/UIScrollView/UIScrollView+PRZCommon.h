//
//  UIScrollView+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (PRZCommon)
//初始化一个UIScrollView 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UIScrollView来调用,会走自定义的UIScrollView中重写的 initWithFrame 方法)
 UIScrollView *scrollview =  [UIScrollView initializeScrollViewWithFrame:CGRectMake(10, 100, 300, 300)
 withBgColor:[UIColor blueColor]
 withContentSize:CGSizeMake(300, 600)
 withSuperView:self.view];
 */
+(instancetype)initializeScrollViewWithFrame:(CGRect)frame withBgColor:(UIColor *)aColor withContentSize:(CGSize)aSize withSuperView:(UIView*)superView;
@end
