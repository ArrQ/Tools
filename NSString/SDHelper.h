//
//  SDHelper.h
//  TVXiaoZhen
//
//  Created by ArrQ on 2017/7/29.
//  Copyright © 2017年 ArrQ. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SDHelper : NSObject

/**
  计算文字长度

 @param text 文字
 @param font 字体
 @return 长度
 */
+ (CGFloat )widthForLabelWidth:(NSString *)text fontSize:(CGFloat)font;


/**
 计算文字长度
 
 @param text 文字
 @param font 字体
 @param width 宽度
 @return 高度
 */
+ (CGFloat)widthForLabelHeight:(NSString *)text width:(CGFloat)width fontSize:(CGFloat)font;

/**
 16进制转换 颜色

 @param hexColor 颜色
 @return 转换后的颜色
 */
+(UIColor *) getColor:(NSString *)hexColor;
@end
