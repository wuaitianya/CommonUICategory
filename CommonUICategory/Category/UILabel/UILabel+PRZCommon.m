//
//  UILabel+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UILabel+PRZCommon.h"

@implementation UILabel (PRZCommon)

+(instancetype)initializeLabelWithFrame:(CGRect)frame withTextColor:(UIColor*)color withFontSize:(CGFloat)fontSize withSuperView:(UIView*)superView{
    UILabel *aLabel = [[self alloc] initWithFrame:frame];
    aLabel.textColor = color;
    aLabel.font = [UIFont systemFontOfSize:fontSize];
    [superView addSubview:aLabel];
    return aLabel;
}

- (void)setLabelWithFont:(CGFloat)font textColor:(UIColor *)textColor
{
    [self setLabelWithFont:font textColor:textColor textAlignment:NSTextAlignmentLeft];
}

- (void)setLabelWithFont:(CGFloat)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment
{
    self.font = [UIFont systemFontOfSize:font];
    self.textColor = textColor;
    self.textAlignment = textAlignment;
}

- (void)colorTextWithColor:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attrStr = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    
    [attrStr addAttribute:NSForegroundColorAttributeName value:color range:range];
    self.attributedText = attrStr;
}

- (void)fontTextWithFont:(UIFont *)font range:(NSRange)range {
    NSMutableAttributedString *attrStr = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    
    [attrStr addAttribute:NSFontAttributeName value:font range:range];
    self.attributedText = attrStr;
}

- (void)LineSpacingWithSpace:(CGFloat)space range:(NSRange)range
{
    //初始化字符串
    NSMutableParagraphStyle  *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    // 行间距设置为30
    [paragraphStyle  setLineSpacing:space];
    NSMutableAttributedString *attrStr = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    [attrStr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
}
+ (CGSize)getFitSizeWithString:(NSString*)str withConstantSize:(CGSize)size withFont:(CGFloat)font{
    CGRect rect = [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:font]} context:nil];
    return rect.size;
}
@end
