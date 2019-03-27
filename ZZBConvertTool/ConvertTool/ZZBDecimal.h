//
//  ZZBDecimal.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//  其他进制转十进制

#import <Foundation/Foundation.h>


@interface ZZBDecimal : NSObject

/**
 * 二进制转十进制
 * param binary 二进制
 * return 获取十进制
 */
+ (NSString *)binary:(NSString *)binary;

/**
 * 八进制转十进制
 * param octal 八进制
 * return 获取十进制
 */
+ (NSString *)octal:(NSString *)octal;

/**
 * 十六进制转十进制
 * param hexadecimal 十六进制
 * return 获取十进制
 */
+ (NSString *)hexadecimal:(NSString *)hexadecimal;

@end


