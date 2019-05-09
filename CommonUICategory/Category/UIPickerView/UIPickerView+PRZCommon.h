//
//  UIPickerView+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIPickerView (PRZCommon)
//初始化一个UIPickerView 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UIPickerView来调用,会走自定义的UIPickerView中重写的 initWithFrame 方法)
 delegate 可以传nil
 UIPickerView *picker = [UIPickerView initializePickerWithFrame:CGRectMake(10, 100, 200, 300)
 withDelegate:self
 withBgColor:[UIColor whiteColor]
 withSuperView:self.view];
 */
+(instancetype)initializePickerWithFrame:(CGRect)frame withDelegate:(id)delegate withBgColor:(UIColor *)aColor withSuperView:(UIView*)superView;
@end
