//
//  ZZBConvertDecimal.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//  其他进制转十进制

#import <Foundation/Foundation.h>


@interface ZZBConvertDecimal : NSObject

/**
 * 二进制转十进制
 * param binary 二进制字符串
 * return 获取十进制字符串
 */
+ (NSString *)zzb_binary:(NSString *)binary;

/**
 * 八进制转十进制
 * param octal 八进制字符串
 * return 获取十进制字符串
 */
+ (NSString *)zzb_octal:(NSString *)octal;

/**
 * 十六进制转十进制
 * param hex 十六进制字符串
 * return 获取十进制字符串
 */
+ (NSString *)zzb_hex:(NSString *)hex;


@end


