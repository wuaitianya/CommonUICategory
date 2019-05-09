//
//  UIViewController+PRZCommon.m
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/25.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import "UIViewController+PRZCommon.h"

@implementation UIViewController (PRZCommon)
-(void)addLeftButtonWithImageName:(NSString*)imageName
{
    UIButton *leftItemButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 44)];
    UIImage *image = [UIImage imageNamed:imageName];
    leftItemButton.imageEdgeInsets = UIEdgeInsetsMake(0,image.size.width - leftItemButton.frame.size.width,0,0);
    [leftItemButton setImage:image
                    forState:UIControlStateNormal];
    
    [leftItemButton addTarget:self
                       action:@selector(leftBarItemClicked:)
             forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftItemButton];
    self.navigationItem.leftBarButtonItem = leftItem;
}

//为了不报警告 需要的话，子类自己重写即可
-(void)leftBarItemClicked:(id)sender{
    
}


-(void)addRightButtonWithImageName:(NSString*)imageName
{
    //    if (rightItemClickBlock) {
    //        self.rightItemClickBlock = rightItemClickBlock;
    //    }
    UIButton *rightItemButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 44)];
    UIImage *image = [UIImage imageNamed:imageName];
    rightItemButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, image.size.width - rightItemButton.frame.size.width);
    [rightItemButton setImage:image
                     forState:UIControlStateNormal];
    
    [rightItemButton addTarget:self
                        action:@selector(rightBarItemClicked:)
              forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemButton];
    self.navigationItem.rightBarButtonItem = rightItem;
}

//为了不报警告
-(void)rightBarItemClicked:(id)sender
{
}

-(void)addLeftButtonWithTitle:(NSString*)title
{
    UIButton *leftItemButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 44)];
    [leftItemButton setTitle:title forState:UIControlStateNormal];
    leftItemButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [leftItemButton.titleLabel sizeToFit];
    [leftItemButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftItemButton setFrame:leftItemButton.titleLabel.frame];
    [leftItemButton addTarget:self
                       action:@selector(leftBarItemClicked:)
             forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftItemButton];
    self.navigationItem.leftBarButtonItem = leftItem;
}


-(void)addRightButtonWithTitle:(NSString*)title
{
    UIButton *rightItemButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 44)];
    [rightItemButton setTitle:title forState:UIControlStateNormal];
    rightItemButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [rightItemButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightItemButton.titleLabel sizeToFit];
    [rightItemButton setFrame:rightItemButton.titleLabel.frame];
    [rightItemButton addTarget:self
                        action:@selector(rightBarItemClicked:)
              forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemButton];
    self.navigationItem.rightBarButtonItem = rightItem;
}


- (void)addLeftButtonWithTitle:(NSString *)title WithImageName:(NSString *)imageName
{
    //
    UIButton *leftItemAddressButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0, 40, 44)];
    [leftItemAddressButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftItemAddressButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [leftItemAddressButton setTitle:title forState:UIControlStateNormal];
    leftItemAddressButton.titleLabel.font = [UIFont systemFontOfSize:14];
    //导入UIButton类别 设置图片和文字的间隔位置
    //    [leftItemAddressButton layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleRight imageTitleSpace:11.5];
    [leftItemAddressButton addTarget:self
                              action:@selector(leftBarItemClicked:)
                    forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftItemAddressButton];
}
@end
