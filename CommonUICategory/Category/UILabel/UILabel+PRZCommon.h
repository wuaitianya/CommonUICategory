//
//  UILabel+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (PRZCommon)
//初始化一个label 并添加到指定视图上
/*
 使用示例 (也可以使用自定义label来调用,会走自定义的label中重写的 initWithFrame 方法)
 UILabel *label = [UILabel initializeLabelWithFrame:CGRectMake(10, 300, 100, 50)
 withTextColor:[UIColor redColor]
 withFontSize:20
 withSuperView:self.view];
 */
+(instancetype)initializeLabelWithFrame:(CGRect)frame withTextColor:(UIColor*)color withFontSize:(CGFloat)fontSize withSuperView:(UIView*)superView;



//常规设置label的属性
- (void)setLabelWithFont:(CGFloat)font textColor:(UIColor *)textColor;
- (void)setLabelWithFont:(CGFloat)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
//富文本颜色
- (void)colorTextWithColor:(UIColor *)color range:(NSRange)range;
//富文本字体
- (void)fontTextWithFont:(UIFont *)font range:(NSRange)range;
//富文本行间距
- (void)LineSpacingWithSpace:(CGFloat)space range:(NSRange)range;
/**
 自动获取自适应的的宽或者高
 如需获取单行的宽 size传入 CGSizeMake(MAXFLOAT, <#CGFloat height#>)
 如需获取多行的高 size传入 CGSizeMake(<#CGFloat width#>, MAXFLOAT)
 */
+ (CGSize)getFitSizeWithString:(NSString*)str withConstantSize:(CGSize)size withFont:(CGFloat)font;
@end
