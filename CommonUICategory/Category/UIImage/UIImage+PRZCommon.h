//
//  UIImage+PRZCommon.h
//  changeTest
//
//  Created by 雾霭天涯 on 2018/7/24.
//  Copyright © 2018年 雾霭天涯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Accelerate/Accelerate.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>
#define ORIGINAL_MAX_WIDTH 640.0f
#define YY_SWAP(_a_, _b_)  do { __typeof__(_a_) _tmp_ = (_a_); (_a_) = (_b_); (_b_) = _tmp_; } while (0)

typedef enum{
    kCodePatternForBarCode = 0,//条形码，一维码
    kCodePatternForQRCode = 1//二维码
}kCodePattern;

@interface UIImage (PRZCommon)
#pragma mark - 常用
//获取 在线视频 缩略图    注意要在分线程中操作
+ (UIImage *)getThumbnailImageFromOnlineVideoURL:(NSString *)fileurl;
//获取 本地视频 缩略图    注意要在分线程中操作
-(UIImage *)getThumbnailImageFromLocalVideo:(NSString *)videoPath;

//由颜色生成图片
+ (UIImage *) imageWithColor:(UIColor*)color;

/**
 将图片剪裁至目标尺寸 这里是宽高裁剪，并要求图片所占内存大小小于给定值，如果不满足条件，进行模糊压缩
 sourceImage 原始图片
 targetSize  限定图片的尺寸大小 宽高
 memsize     限定图片的内存大小 单位是byte  如果传0 则不加限制
  */
+ (UIImage *) imageByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize limitedMemsize:(CGFloat)memsize;
/**
 获取查看图片大小
 */
+ (NSString*)calulateImageFileSize:(UIImage *)image;
/**
 图片进行内存大小不失真压缩，不改变图片尺寸   maxSize单位是KB
 */
+ (UIImage *)resetSizeOfImageData:(UIImage *)sourceImage maxSize:(CGFloat)maxSize;

//图片旋转角度
- (UIImage *) imageRotatedByDegrees:(CGFloat)degrees;
#pragma mark - 图片的模糊化
//玻璃化效果，这里与系统的玻璃化枚举效果一样，但只是一张图
- (UIImage *)imageByBlurSoft;

- (UIImage *)imageByBlurLight;

- (UIImage *)imageByBlurExtraLight;

- (UIImage *)imageByBlurDark;

- (UIImage *)imageByBlurWithTint:(UIColor *)tintColor;

- (UIImage *)imageByBlurRadius:(CGFloat)blurRadius
                     tintColor:(UIColor *)tintColor
                      tintMode:(CGBlendMode)tintBlendMode
                    saturation:(CGFloat)saturation
                     maskImage:(UIImage *)maskImage;

- (UIImage *) boxblurImageWithBlur:(CGFloat)blur exclusionPath:(UIBezierPath *)exclusionPath;

#pragma mark - 生成二维码/条形码
/**
 *  生成二维码
 *
 *  @param string  二维码字符串
 *  @param size    图片宽度 height = width
 *  @param color   二维码颜色
 *  @param pattern code类型
 *
 *  @return self
 */
+ (instancetype)imageForCodeString:(NSString *)string size:(CGFloat)size color:(UIColor *)color pattern:(kCodePattern)pattern;

@end



#pragma mark - 图片使用到的颜色类别
@interface UIColor (Zirkfied)
@property (nonatomic, assign, readonly) CGFloat red;
@property (nonatomic, assign, readonly) CGFloat green;
@property (nonatomic, assign, readonly) CGFloat blue;
@property (nonatomic, assign, readonly) CGFloat alpha;
@end
