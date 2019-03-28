//
//  ZZBConvertHelp.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/28.
//  Copyright © 2019 apple. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZZBConvertHelp : NSObject

/**
 * 用于判断字符串是否为“空值”
 * param string 需要判断字符串
 * return BOOL 是否“空值”
 */
+ (BOOL)zzb_isNullString:(NSString *)string;

/**
 * 是否二进制字符串
 * param string 二进制字符串
 * return BOOL 是否二进制字符串
 */
+ (BOOL)zzb_isMatchedBinary:(NSString *)binaryValue;

/**
 * 是否八进制字符串
 * param string 八进制字符串
 * return BOOL 是否八进制字符串
 */
+ (BOOL)zzb_isMatchedOctal:(NSString *)octalValue;

/**
 * 是否十进制字符串
 * param string 十进制字符串
 * return BOOL 十进制字符串
 */
+ (BOOL)zzb_isMatchedDecimal:(NSString *)decimalValue;

/**
 * 是否十六进制字符串
 * param string 十六进制字符串
 * return BOOL 十六进制字符串
 */
+ (BOOL)zzb_isMatchedHex:(NSString *)hexValue;

/**
 * 转换指映射表
 * return 转换指映射表字典
 */
+ (NSDictionary *)zzb_convertMapChart;
@end

