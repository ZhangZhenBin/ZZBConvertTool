//
//  ZZBBinary.h
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//  其他进制转二进制

#import <Foundation/Foundation.h>


@interface ZZBBinary : NSObject

/**
 * 十进制转二进制
 * param binary 十进制
 * return 获取二进制
 */
+ (NSString *)decimal:(NSString *)decimal;

/**
 * 八进制转二进制
 * param octal 八进制
 * return 获取二进制
 */
+ (NSString *)octal:(NSString *)octal;

/**
 * 十六进制转二进制
 * param hexadecimal 十六进制
 * return 获取二进制
 */
+ (NSString *)hexadecimal:(NSString *)hexadecimal;

@end

