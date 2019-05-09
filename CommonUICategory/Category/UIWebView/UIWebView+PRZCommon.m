//
//  UIWebView+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIWebView+PRZCommon.h"

@implementation UIWebView (PRZCommon)
+(instancetype)initializeWebViewWithFrame:(CGRect)frame withUrlStr:(NSString*)urlStr withSuperView:(UIView*)superView{
    UIWebView * aWebView = [[self alloc] initWithFrame:frame];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    [aWebView loadRequest:request];
    [superView addSubview:aWebView];
    return aWebView;
}
@end
