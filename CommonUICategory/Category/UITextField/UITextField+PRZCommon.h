//
//  UITextField+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (PRZCommon)
//初始化一个UITextField 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UITextField来调用,会走自定义的UITextField中重写的 initWithFrame 方法)
 [UITextField initializeTextFieldWithFrame:CGRectMake(100, 400, 100, 20)
 withPlaceHolder:@"请输入"
 withFontSize:10
 withTextColor:[UIColor redColor]
 withBgColor:[UIColor whiteColor]
 withSuperView:self.view];
 */
+(instancetype)initializeTextFieldWithFrame:(CGRect)frame withPlaceHolder:(NSString*)placeHolder withFontSize:(CGFloat)fontSize withTextColor:(UIColor*)textColor withBgColor:(UIColor*)bgColor withSuperView:(UIView*)superView;


- (void)setTextFieldWithPlaceholder:(NSString *)placeholder Font:(CGFloat)font textColor:(UIColor *)textColor;
@end
