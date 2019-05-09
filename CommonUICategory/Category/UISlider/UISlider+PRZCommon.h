//
//  UISlider+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISlider (PRZCommon)
//初始化一个UISlider 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UISlider来调用,会走自定义的UISlider中重写的 initWithFrame 方法)
 [UISlider initializeSliderWithFrame:CGRectMake(0,100, 100, 50)
 withMinValue:1
 withMaxValue:10
 withDefaultValue:2
 withTarget:self
 withSelector:@selector(sliderValueChanged:)
 withMinTrackTintColor:[UIColor orangeColor]
 withMaxTrackTintColor:[UIColor blueColor]
 withThumbTintColor:[UIColor greenColor]
 withSuperView:self.view];
 */
+(instancetype)initializeSliderWithFrame:(CGRect)frame withMinValue:(CGFloat)minValue withMaxValue:(CGFloat)maxValue withDefaultValue:(CGFloat)defaultValue withTarget:(id)target withSelector:(SEL)selector withMinTrackTintColor:(UIColor*)minColor withMaxTrackTintColor:(UIColor*)maxColor withThumbTintColor:(UIColor*)thumbColor withSuperView:(UIView*)superView;
@end
