//
//  ZZBConvertBinary.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//  其他进制转二进制

#import <Foundation/Foundation.h>


@interface ZZBConvertBinary : NSObject

/**
 * 十进制转二进制
 * param binary 十进制字符串
 * return 获取二进制字符串
 */
+ (NSString *)zzb_decimal:(NSString *)decimal;

/**
 * 八进制转二进制
 * param octal 八进制字符串
 * return 获取二进制字符串
 */
+ (NSString *)zzb_octal:(NSString *)octal;

/**
 * 十六进制转二进制
 * param hex 十六进制字符串
 * return 获取二进制字符串
 */
+ (NSString *)zzb_hex:(NSString *)hex;

@end

