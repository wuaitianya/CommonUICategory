//
//  UISlider+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UISlider+PRZCommon.h"

@implementation UISlider (PRZCommon)
+(instancetype)initializeSliderWithFrame:(CGRect)frame withMinValue:(CGFloat)minValue withMaxValue:(CGFloat)maxValue withDefaultValue:(CGFloat)defaultValue withTarget:(id)target withSelector:(SEL)selector withMinTrackTintColor:(UIColor*)minColor withMaxTrackTintColor:(UIColor*)maxColor withThumbTintColor:(UIColor*)thumbColor withSuperView:(UIView*)superView{
    
    // 创建一个UISlider
    UISlider* aSlider = [[self alloc] initWithFrame:frame];
    // 设置UISlider的最小值和最大值
    aSlider.minimumValue = minValue;
    aSlider.maximumValue = maxValue;
    // 设置UISlider的初始值
    aSlider.value = defaultValue;
    // 为UISlider添加事件方法
    [aSlider addTarget:target action:selector forControlEvents:UIControlEventValueChanged];
    
    // 定义UISlider的样式
    aSlider.minimumTrackTintColor = minColor;
    aSlider.maximumTrackTintColor = maxColor;
    aSlider.thumbTintColor = thumbColor;
    // 将UISlider添加到一个UIView视图中
    [superView addSubview:aSlider];
    return aSlider;
}
@end
