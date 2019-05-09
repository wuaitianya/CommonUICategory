//
//  NSString+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (PRZCommon)

#pragma mark - 常用
- (BOOL)isEmpty;
- (NSString *) md5WithString;//MD5加密
+ (NSString*)dictionaryToJson:(NSDictionary *)dic;
+ (NSDictionary*)jsonToDictionary:(NSString *)json;
/**
 计算文字高度
 @param fontSize 字体
 @param width 最大宽度
 */
- (CGFloat) heightWithFontSize:(CGFloat)fontSize width:(CGFloat)width;

/**
 计算文字宽度
 @param fontSize 字体
 @param maxHeight 最大高度
 */
- (CGFloat  ) widthWithFontSize:(CGFloat)fontSize height:(CGFloat)maxHeight;
// 计算富文本的高度
- (CGFloat)heightWithContainWidth:(CGFloat)width;
- (CGSize)getSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;
+ (void)callTelephone:(NSString*)number;

#pragma mark - 文字校验
//有效的电话号码
- (BOOL) isValidMobileNumber;

//有效的真实姓名
- (BOOL) isValidRealName;

//是否只有中文
- (BOOL) isOnlyChinese;

//有效的验证码(根据自家的验证码位数进行修改)
- (BOOL) isValidVerifyCode;

//有效的银行卡号
- (BOOL) isValidBankCardNumber;

//有效的邮箱
- (BOOL) isValidEmail;

//有效的字母数字密码
- (BOOL) isValidAlphaNumberPassword;

//检测有效身份证
//15位
- (BOOL) isValidIdentifyFifteen;
//18位
- (BOOL) isValidIdentifyEighteen;
//限制只能输入数字
- (BOOL) isOnlyNumber;

#pragma mark - 时间撮

+(int)compareOneDay:(NSString *)oneDayStr withAnotherDay:(NSString *)anotherDayStr withDataFormat:(NSString *)dateFormatString;
/**
 通过时间戳计算时间差（几小时前、几天前
 */
+ (NSString *) compareCurrentTime:(NSTimeInterval) compareDate;

/**
 通过时间戳得出对应的时间
 
 @param timestamp 时间戳
 */
+ (NSString *) getDateStringWithTimestamp:(NSTimeInterval)timestamp;

/**
 //通过时间戳和显示时间
 @param timestamp 时间戳
 @param formatter 格式
 */
+ (NSString *) getStringWithTimestamp:(NSTimeInterval)timestamp formatter:(NSString*)formatter;

#pragma mark - 不常用
/**
 *  NSString转为NSNumber
 *
 *  @return NSNumber
 */
- (NSNumber*) toNumber;

/**
 //去掉前后空格
 
 */
- (NSString*) trimmedString;
//文件大小设置
+ (NSString *)transformedValue:(long long)value;
@end
