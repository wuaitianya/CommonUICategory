//
//  UIDatePicker+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDatePicker (PRZCommon)
//初始化一个UIDatePicker 并添加到指定视图上
/*
 frame 可以只设置坐标，不设置宽高
 mode UIDatePicker的模式
 UIDatePickerModeTime
 UIDatePickerModeDate
 UIDatePickerModeDateAndTime
 UIDatePickerModeCountDownTimer 倒计时模式可以设置倒计时间隔  datePicker.minuteInterval = 5;
 使用示例
 UIDatePicker* datePicker = [UIDatePicker initializePickerWithFrame:CGRectMake(10, 100, 0, 0)
 withPickerMode:UIDatePickerModeDateAndTime
 withSelector:@selector(dateChange:)
 withTarget:self
 withSuperView:self.view];
 */
+(instancetype)initializePickerWithFrame:(CGRect)frame withPickerMode:(NSInteger)mode withSelector:(SEL)selector withTarget:(id)target withSuperView:(UIView*)superView;

@end
