//
//  ZZBConvertHex.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//  其他进制转十六进制

#import <Foundation/Foundation.h>


@interface ZZBConvertHex : NSObject

/**
 * 二进制转十六进制
 * param binary 二进制字符串
 * return 获取十六进制字符串
 */
+ (NSString *)zzb_binary:(NSString *)binary;

/**
 * 八进制转十六进制
 * param octal 八进制字符串
 * return 获取十六进制字符串
 */
+ (NSString *)zzb_octal:(NSString *)octal;

/**
 * 十进制转十六进制
 * param decimal 十进制字符串
 * return 获取十六进制字符串
 */
+ (NSString *)zzb_decimal:(NSString *)decimal;



@end

