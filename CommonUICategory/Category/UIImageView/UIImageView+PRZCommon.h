//
//  UIImageView+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (PRZCommon)
//初始化一个UIImageView 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UIImageView来调用,会走自定义的UIImageView中重写的 initWithFrame 方法)
 [UIImageView initializeImageViewWithFrame:CGRectMake(10, 100, 300, 300)
 withImage:[UIImage imageNamed:@"icn_choice"]
 withSuperView:self.view];
 */
+(instancetype)initializeImageViewWithFrame:(CGRect)frame withImage:(UIImage *)image withSuperView:(UIView*)superView;
@end
