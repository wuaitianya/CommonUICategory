//
//  UIButton+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIButton+PRZCommon.h"
#import <objc/runtime.h>

@implementation UIButton (PRZCommon)

#pragma mark - 常用
//创建一个完整的 包含 title 和 image
+(instancetype)initializeButtonWithFrame:(CGRect)frame withTarget:(id)target withSelector:(SEL)selector withImage:(UIImage*)image withTitle:(NSString*)title withFontSize:(CGFloat)fontSize withTitleColor:(UIColor*)titleColor withSuperView:(UIView*)superView{
    
    UIButton *aButton = [self buttonWithType:UIButtonTypeCustom];
    aButton.frame = frame;
    if (target && selector) {
        [aButton addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    if (image) {
        [aButton setImage:image forState:UIControlStateNormal];
    }
    if (title && title.length > 0) {
        [aButton setTitle:title forState:UIControlStateNormal];
    }
    if (titleColor) {
        [aButton setTitleColor:titleColor forState:UIControlStateNormal];
    }
    aButton.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    //    aButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [superView addSubview:aButton];
    return aButton;
}
//创建一个只有title的
+(instancetype)initializeButtonWithFrame:(CGRect)frame withTarget:(id)target withSelector:(SEL)selector withTitle:(NSString*)title withFontSize:(CGFloat)fontSize withTitleColor:(UIColor*)titleColor withSuperView:(UIView*)superView{
    return [self initializeButtonWithFrame:frame withTarget:target withSelector:selector withImage:nil withTitle:title withFontSize:fontSize withTitleColor:titleColor withSuperView:superView];
}
//创建一个只有image的
+(instancetype)initializeButtonWithFrame:(CGRect)frame withTarget:(id)target withSelector:(SEL)selector withImage:(UIImage*)image withSuperView:(UIView*)superView{
    return [self initializeButtonWithFrame:frame withTarget:target withSelector:selector withImage:image withTitle:@"" withFontSize:17 withTitleColor:[UIColor blackColor] withSuperView:superView];
}

- (void)setButtonWithImage:(NSString *)normalImage highImage:(NSString *)highImage title:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font {
    if (normalImage) {
        [self setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    }
    if (highImage) {
        [self setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
    [self setButtonWithTitle:title textColor:color textFont:font];
}



- (void)setButtonWithImage:(NSString *)normalImage selectImage:(NSString *)selectImage title:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font {
    if (normalImage) {
        [self setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    }
    if (selectImage) {
        [self setImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    }
    [self setButtonWithTitle:title textColor:color textFont:font];
}

- (void)setButtonWithImage:(NSString *)normalImage selectImage:(NSString *)highImage title:(NSString *)title textColor:(UIColor *)color textSelectColor:(UIColor *)selectColor textFont:(CGFloat)font {
    [self setButtonWithImage:normalImage selectImage:highImage title:title textColor:color textFont:font];
    [self setTitleColor:selectColor forState:UIControlStateSelected];
}
- (void)setButtonWithBackgroundImage:(NSString *)normalImage backgroundhighImage:(NSString *)highImage title:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font {
    [self setButtonWithTitle:title textColor:color textFont:font];
    if (normalImage) {
        [self setBackgroundImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    }
    if (highImage) {
        [self setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
}
- (void)setButtonWithTitle:(NSString *)title textColor:(UIColor *)color textFont:(CGFloat)font
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:color forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:font];
}

//按钮点击倒计时效果
- (void)startWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor *)mColor countColor:(UIColor *)color {
    
    //倒计时时间
    __block NSInteger timeOut = timeLine;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        
        //倒计时结束，关闭
        if (timeOut <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.backgroundColor = mColor;
                [self setTitle:title forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
                self.alpha = 1.0;
            });
        } else {
            int allTime = (int)timeLine + 1;
            int seconds = timeOut % allTime;
            NSString *timeStr = [NSString stringWithFormat:@"%0.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.backgroundColor = color;
                [self setTitle:[NSString stringWithFormat:@"%@%@",timeStr,subTitle] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
                self.alpha = 0.4;
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
}


-(void)addCallBackAction:(ButtonActionCallBack)action
        forControlEvents:(UIControlEvents)controlEvents
{
    [self addCallBackAction:action forControlEvents:controlEvents];
}

-(void)addCallBackAction:(ButtonActionCallBack)action
{
    [self addCallBackAction:action forControlEvents:UIControlEventTouchUpInside];
}


static char topNameKey;
static char rightNameKey;
static char bottomNameKey;
static char leftNameKey;
- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left
{
    objc_setAssociatedObject(self, &topNameKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightNameKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &bottomNameKey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftNameKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (CGRect)enlargedRect
{
    NSNumber *topEdge = objc_getAssociatedObject(self, &topNameKey);
    NSNumber *rightEdge = objc_getAssociatedObject(self, &rightNameKey);
    NSNumber *bottomEdge = objc_getAssociatedObject(self, &bottomNameKey);
    NSNumber *leftEdge = objc_getAssociatedObject(self, &leftNameKey);
    if (topEdge && rightEdge && bottomEdge && leftEdge) {
        return CGRectMake(self.bounds.origin.x - leftEdge.floatValue,
                          self.bounds.origin.y - topEdge.floatValue,
                          self.bounds.size.width + leftEdge.floatValue + rightEdge.floatValue,
                          self.bounds.size.height + topEdge.floatValue + bottomEdge.floatValue);
    }
    else
    {
        return self.bounds;
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    CGRect rect = [self enlargedRect];
    if (CGRectEqualToRect(rect, self.bounds)) {
        return [super hitTest:point withEvent:event];
    }
    return CGRectContainsPoint(rect, point) ? self : nil;
}

#pragma mark - 防止重复点击

// 因category不能添加属性，只能通过关联对象的方式。
static const char *UIControl_acceptEventInterval = "UIControl_acceptEventInterval";

- (NSTimeInterval)cs_acceptEventInterval {
    return  [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
}

- (void)setCs_acceptEventInterval:(NSTimeInterval)cs_acceptEventInterval {
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(cs_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

static const char *UIControl_acceptEventTime = "UIControl_acceptEventTime";

- (NSTimeInterval)cs_acceptEventTime {
    return  [objc_getAssociatedObject(self, UIControl_acceptEventTime) doubleValue];
}

- (void)setCs_acceptEventTime:(NSTimeInterval)cs_acceptEventTime {
    objc_setAssociatedObject(self, UIControl_acceptEventTime, @(cs_acceptEventTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


// 在load时执行hook
+ (void)load {
    if (![self isKindOfClass:[UIButton class]]) {
        //如果不加判断，会导致 UISwitch 等继承 UIController 的空间，在添加action时，直接崩溃： [switch addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
        return;
    }
    Method before   = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method after    = class_getInstanceMethod(self, @selector(cs_sendAction:to:forEvent:));
    method_exchangeImplementations(before, after);
}

- (void)cs_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    if (![self isKindOfClass:[UIButton class]]) {
        //如果不加判断，会导致 UISwitch 等继承 UIController 的空间，在添加action时，直接崩溃： [switch addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
        return;
    }
    if ([NSDate date].timeIntervalSince1970 - self.cs_acceptEventTime < self.cs_acceptEventInterval) {
        return;
    }
    
    if (self.cs_acceptEventInterval > 0) {
        self.cs_acceptEventTime = [NSDate date].timeIntervalSince1970;
    }
    
    [self cs_sendAction:action to:target forEvent:event];
}
#pragma mark - 设置按钮：图片和标题的相对位置间隔
- (void)setButtonEdgeInsetsStyle:(MKButtonEdgeInsetsStyle)style
                 imageTitleSpace:(CGFloat)space
{
    // 1. 得到imageView和titleLabel的宽、高
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
    // 2. 声明全局的imageEdgeInsets和labelEdgeInsets
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    // 3. 根据style和space得到imageEdgeInsets和labelEdgeInsets的值
    switch (style) {
        case MKButtonEdgeInsetsStyleImageTop:
        {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
        }
            break;
        case MKButtonEdgeInsetsStyleImageLeft:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
        }
            break;
        case MKButtonEdgeInsetsStyleImageBottom:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
        }
            break;
        case MKButtonEdgeInsetsStyleImageRight:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
        }
            break;
        default:
            break;
    }
    // 4. 赋值
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}


@end
