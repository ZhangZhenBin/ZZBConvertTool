//
//  ZZBConvertOctal.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//  其他进制转八进制

#import <Foundation/Foundation.h>


@interface ZZBConvertOctal : NSObject

/**
 * 二进制转八进制
 * param binary 二进制字符串
 * return 获取八进制字符串
 */
+ (NSString *)zzb_binary:(NSString *)binary;

/**
 * 十进制转八进制
 * param decimal 十进制字符串
 * return 获取八进制字符串
 */
+ (NSString *)zzb_decimal:(NSString *)decimal;

/**
 * 十六进制转八进制
 * param hexadecimal 十六进制字符串
 * return 获取八进制字符串
 */
+ (NSString *)zzb_hex:(NSString *)hex;

@end

