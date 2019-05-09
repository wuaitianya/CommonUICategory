//
//  UIWebView+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWebView (PRZCommon)
//初始化一个UIWebView 并添加到指定视图上
/*
 使用示例 (也可以使用自定义UIWebView来调用,会走自定义的UIWebView中重写的 initWithFrame 方法)
 [UIWebView initializeWebViewWithFrame:CGRectMake(100, 100, 100, 100)
 withUrlStr:@"https://www.baidu.com"
 withSuperView:self.view];
 */
+(instancetype)initializeWebViewWithFrame:(CGRect)frame withUrlStr:(NSString*)urlStr withSuperView:(UIView*)superView;

@end
