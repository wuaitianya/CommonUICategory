//
//  UISegmentedControl+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UISegmentedControl+PRZCommon.h"

@implementation UISegmentedControl (PRZCommon)
+(instancetype)initializeSegmentWithFrame:(CGRect)frame withTitles:(NSArray*)titles withDefaultSelectIndex:(NSInteger)defaultSelect withTintColor:(UIColor*)tintColor withTarget:(id)target withSelector:(SEL)selector withSuperView:(UIView*)superView{
    
    UISegmentedControl *aSegment = [[self alloc]initWithFrame:frame];
    if (titles && titles.count > 0) {
        for (NSInteger i = 0; i < titles.count; i++) {
            NSString *title = titles[i];
            [aSegment insertSegmentWithTitle:title atIndex:i animated:YES];
        }
    }
    //    [aSegment removeSegmentAtIndex:1 animated:YES];//移除某段
    //    UIImage *image =  [seg imageForSegmentAtIndex:2];//获取某一段的图片
    //    NSString *str = [seg titleForSegmentAtIndex:1];//获取某一段的标题
    //    NSLog(@"%zi",seg2.numberOfSegments);//获取段数
    //    NSLog(@"第几个：%zi",segment.selectedSegmentIndex);//获取当前点击的编号
    //    [seg setWidth:100 forSegmentAtIndex:1];//设置某一段的宽度
    //    [seg setEnabled:YES];//设置整体是否被激活；
    //    [seg setEnabled:YES forSegmentAtIndex:2];//设置某一段是否激活
    //    seg.selectedSegmentIndex = 1;//设置某段为默认选中项
    //    NSLog(@"%zi",seg.selectedSegmentIndex);//获取当前被选中的段；
    //    seg.tintColor = [UIColor purpleColor];//设置边框和选中颜色；
    //    [seg setBackgroundImage:[UIImage imageNamed:@"图片名"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];//设置整体的背景图片
    //    [seg insertSegmentWithImage:[UIImage imageNamed:@"图片名"] atIndex:4 animated:YES];//给某一段设置图片（图片为带边框透明的才可以完整显示，其它图片不能完整显示）
    //    UIImage *image =  [seg imageForSegmentAtIndex:2];//获取某一段的图片
    //绑定监听事件
    if (defaultSelect < titles.count) {
        aSegment.selectedSegmentIndex = defaultSelect;
    }
    aSegment.tintColor = tintColor;
    [aSegment addTarget:target action:selector forControlEvents:UIControlEventValueChanged];
    [superView addSubview:aSegment];
    return aSegment;
}
@end
