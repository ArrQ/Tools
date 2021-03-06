//
//  SDHelper.m
//  TVXiaoZhen
//
//  Created by ArrQ on 2017/7/29.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "SDHelper.h"

@implementation SDHelper
/**
 *  计算文字宽度
 */
+ (CGFloat )widthForLabelWidth:(NSString *)text fontSize:(CGFloat)font
{
    CGSize size = [text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:font], NSFontAttributeName, nil]];

    return size.width;
}


// 计算文字高度

+ (CGFloat)widthForLabelHeight:(NSString *)text width:(CGFloat)width fontSize:(CGFloat)font{


 CGRect rect = [text boundingRectWithSize:CGSizeMake(width, 1000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil];
    
    
    return rect.size.height;



}


/**
 转换颜色
 */
+(UIColor *) getColor:(NSString *)hexColor
{
    unsigned int red, green, blue;
    NSRange range;
    range.length =2;
    
    range.location =0;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]]scanHexInt:&red];
    range.location =2;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]]scanHexInt:&green];
    range.location =4;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]]scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green/255.0f)blue:(float)(blue/255.0f)alpha:1.0f];
}

@end
