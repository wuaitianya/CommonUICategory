//
//  UIPickerView+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIPickerView+PRZCommon.h"

@implementation UIPickerView (PRZCommon)
+(instancetype)initializePickerWithFrame:(CGRect)frame withDelegate:(id)delegate withBgColor:(UIColor *)aColor withSuperView:(UIView*)superView{
    UIPickerView *aPickerView =[[self alloc]initWithFrame:frame];
    aPickerView.backgroundColor = aColor;
    if (delegate) {
        aPickerView.delegate = delegate;
        aPickerView.dataSource = delegate;
    }
    [superView addSubview: aPickerView];
    return aPickerView;
}
@end
