//
//  UITextField+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UITextField+PRZCommon.h"

@implementation UITextField (PRZCommon)
+(instancetype)initializeTextFieldWithFrame:(CGRect)frame withPlaceHolder:(NSString*)placeHolder withFontSize:(CGFloat)fontSize withTextColor:(UIColor*)textColor withBgColor:(UIColor*)bgColor withSuperView:(UIView*)superView{
    UITextField *aTextField = [[self alloc] initWithFrame:frame];
    aTextField.placeholder = placeHolder;
    aTextField.font = [UIFont systemFontOfSize:fontSize];
    aTextField.textColor = textColor;
    aTextField.backgroundColor = bgColor;
    aTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    //    [aTextField setValue:<#UIColor#> forKeyPath:@"_placeholderLabel.textColor"];
    //    aTextField.delegate = self;
    //    aTextField.keyboardType = UIKeyboardTypeNumberPad;
    [superView addSubview:aTextField];
    return aTextField;
}

- (void)setTextFieldWithPlaceholder:(NSString *)placeholder Font:(CGFloat)font textColor:(UIColor *)textColor {
    self.placeholder = placeholder;
    self.textColor = textColor;
    self.font =  [UIFont systemFontOfSize:font];
}

@end
