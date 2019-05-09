//
//  UIColor+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PRZCommon)
/** 根据色值返回 UIColor
 *  Create a color from a HEX string.
 *  It supports the following type:
 *  - #RGB
 *  - #ARGB
 *  - #RRGGBB
 *  - #AARRGGBB
 *
 *  @param hexString NSString
 *
 *  @return Returns the UIColor instance
 */
+ (UIColor *)hex:(NSString *)hexString;

@end
