//
//  UISegmentedControl+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISegmentedControl (PRZCommon)
//初始化一个UISegmentedControl 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UISegmentedControl来调用,会走自定义的UISegmentedControl中重写的 initWithFrame 方法)
 [UISegmentedControl initializeSegmentWithFrame:CGRectMake(10,100, 100, 50)
 withTitles:@[@"1",@"2",@"44"]
 withDefaultSelectIndex:2
 withTintColor:[UIColor orangeColor]
 withTarget:self
 withSelector:@selector(mySwitch:)
 withSuperView:self.view];
 */
+(instancetype)initializeSegmentWithFrame:(CGRect)frame withTitles:(NSArray*)titles withDefaultSelectIndex:(NSInteger)defaultSelect withTintColor:(UIColor*)tintColor withTarget:(id)target withSelector:(SEL)selector withSuperView:(UIView*)superView;
@end
