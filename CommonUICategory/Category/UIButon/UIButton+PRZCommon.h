//
//  UIButton+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonActionCallBack)(UIButton *button);
typedef NS_ENUM(NSUInteger, MKButtonEdgeInsetsStyle) {
    MKButtonEdgeInsetsStyleImageTop, // image在上，label在下
    MKButtonEdgeInsetsStyleImageLeft, // image在左，label在右
    MKButtonEdgeInsetsStyleImageBottom, // image在下，label在上
    MKButtonEdgeInsetsStyleImageRight // image在右，label在左
};
@interface UIButton (PRZCommon)
#pragma mark - 常用
//初始化一个UIButton 并添加到指定视图上
/*
 target selector 可以传nil, 即不添加点击事件
 使用示例
 [UIButton initializeButtonWithFrame:CGRectMake(100, 100, 400, 30)
 withTarget:self
 withSelector:@selector(oklala)
 withImage:[UIImage imageNamed:@"icn_choice"]
 withTitle:@"123"
 withFontSize:15
 withTitleColor:[UIColor blueColor]
 withSuperView:self.view];
 */
/**创建一个完整的 包含 title 和 image
 */
+(instancetype)initializeButtonWithFrame:(CGRect)frame withTarget:(id)target withSelector:(SEL)selector withImage:(UIImage*)image withTitle:(NSString*)title withFontSize:(CGFloat)fontSize withTitleColor:(UIColor*)titleColor withSuperView:(UIView*)superView;
/**创建一个只有title的
*/
+(instancetype)initializeButtonWithFrame:(CGRect)frame withTarget:(id)target withSelector:(SEL)selector withTitle:(NSString*)title withFontSize:(CGFloat)fontSize withTitleColor:(UIColor*)titleColor withSuperView:(UIView*)superView;
/**
创建一个只有image的
 */
+(instancetype)initializeButtonWithFrame:(CGRect)frame withTarget:(id)target withSelector:(SEL)selector withImage:(UIImage*)image withSuperView:(UIView*)superView;


/**
 设置按钮基本信息
 
 @param normalImage 常规图片
 @param highImage 点击高亮图片
 @param title 标题
 @param color 颜色
 @param font 字体大小
 */
- (void)setButtonWithImage:(NSString *)normalImage highImage:(NSString *)highImage title:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font;
- (void)setButtonWithImage:(NSString *)normalImage selectImage:(NSString *)selectImage title:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font;
- (void)setButtonWithImage:(NSString *)normalImage selectImage:(NSString *)highImage title:(NSString *)title textColor:(UIColor *)color textSelectColor:(UIColor *)selectColor textFont:(CGFloat)font;
- (void)setButtonWithBackgroundImage:(NSString *)normalImage backgroundhighImage:(NSString *)highImage title:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font;
- (void)setButtonWithTitle:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font;


/**
 *  倒计时按钮
 *
 *  @param timeLine 倒计时总时间
 *  @param title    还没倒计时的title
 *  @param subTitle 倒计时中的子名字，如时、分
 *  @param mColor   还没倒计时的颜色
 *  @param color    倒计时中的颜色
 */
- (void)startWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor *)mColor countColor:(UIColor *)color;

//点赞动画效果

-(void)addCallBackAction:(ButtonActionCallBack)action
        forControlEvents:(UIControlEvents)controlEvents;

-(void)addCallBackAction:(ButtonActionCallBack)action;

/**
 *  扩大 UIButton 的点击范围
 *  控制上下左右的延长范围
 
 */
- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

#pragma mark - 防止重复点击
@property (nonatomic, assign) NSTimeInterval cs_acceptEventInterval; // 重复点击的间隔

@property (nonatomic, assign) NSTimeInterval cs_acceptEventTime;

#pragma mark - 设置按钮：图片和标题的相对位置间隔
/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)setButtonEdgeInsetsStyle:(MKButtonEdgeInsetsStyle)style
                 imageTitleSpace:(CGFloat)space;

@end
