//
//  UIViewController+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PRZCommon)
-(void)addLeftButtonWithImageName:(NSString*)imageName;
-(void)addRightButtonWithImageName:(NSString*)imageName;

-(void)addRightButtonWithTitle:(NSString*)title;
-(void)addLeftButtonWithTitle:(NSString*)title;

- (void)addLeftButtonWithTitle:(NSString *)title WithImageName:(NSString *)imageName;

@end
