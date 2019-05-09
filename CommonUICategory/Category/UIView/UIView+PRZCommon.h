//
//  UIView+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PRZCommon)
#pragma mark - 常用
//初始化一个view 并添加到指定视图上
/*
 使用示例 (也可以使用自定义View来调用,会走自定义的UIView中重写的 initWithFrame 方法)
 [UIView initializeViewWithFrame:CGRectMake(100, 100, 100, 100)
 withBgColor:[UIColor blueColor]
 withSuperView:self.view];
 */
+(instancetype)initializeViewWithFrame:(CGRect)frame withBgColor:(UIColor *)aColor withSuperView:(UIView*)superView;
//设置圆角
- (void)setLayerCornerRadius:(CGFloat)radius;
//设置边框线
- (void)setLayerBorderWidth:(CGFloat)width borderColor:(UIColor*)color;



// 是否是第一响应 并取消第一响应
- (BOOL)findAndResignFirstResponder;

/**
 *  获取当前正在显示的控制器(无论keyWindow是什么)
 *
 *  @return 正在显示的控制器
 */
+ (UIViewController *)getCurrentViewConrtroller;

/**
 *  获取当前显示的View的控制器的根控制器
 *
 *  @return 根控制器
 */
+ (UIViewController *)getCurrentRootViewController;
//把View加在Window上
- (void) addToWindow;
#pragma mark - 截图相关

//View截图
- (UIImage*) screenshot;

//ScrollView截图 contentOffset
- (UIImage*) screenshotForScrollViewWithContentOffset:(CGPoint)contentOffset;

//View按Rect截图
- (UIImage*) screenshotInFrame:(CGRect)frame;

//整个view转成图片
- (UIImage*) convertToImage;


/* 如果项目中使用了Masonry ，则隐藏该部分内容，否则与 Masonry 里面的 frame扩展重复，可能导致引用错误  */
#pragma mark - 设置frame
- (CGFloat)left;
- (CGFloat)right;
- (CGSize)size;
- (CGFloat)top;
- (CGFloat)bottom;
- (CGFloat)width;
- (CGFloat)height;
- (CGFloat)centerX;
- (CGFloat)centerY;
- (CGFloat)maxX;
- (CGFloat)maxY;

- (void)setLeft:(CGFloat)left;
- (void)setRight:(CGFloat)right;
- (void)setSize:(CGSize)size;
- (void)setTop:(CGFloat)top;
- (void)setBottom:(CGFloat)bottom;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setCenterX:(CGFloat)centerX;
- (void)setCenterY:(CGFloat)centerY;
- (void)setOrigin:(CGPoint)point;
- (void)setAddTop:(CGFloat)top;
- (void)setAddLeft:(CGFloat)left;
/* 如果项目中使用了Masonry ，则隐藏该部分内容，否则与 Masonry 里面的 frame扩展重复，可能导致引用错误  */
@end
