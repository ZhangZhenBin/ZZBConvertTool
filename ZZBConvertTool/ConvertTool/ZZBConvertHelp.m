//
//  ZZBConvertHelp.m
//  ZZBConvertTool
//
//  Created by apple on 2019/3/28.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZZBConvertHelp.h"

@implementation ZZBConvertHelp

/**
 * 用于判断字符串是否为“空值”
 * param string 需要判断字符串
 * return BOOL 是否“空值”
 */
+ (BOOL)zzb_isNullString:(NSString *)string {
    if (string == nil ||
        string.length == 0 ||
        [string isEqualToString:@"NULL"] ||
        [string isEqualToString:@"Null"] ||
        [string isEqualToString:@"null"] ||
        [string isEqualToString:@"(NULL)"] ||
        [string isEqualToString:@"(Null)"] ||
        [string isEqualToString:@"(null)"] ||
        [string isEqualToString:@"<NULL>"] ||
        [string isEqualToString:@"<Null>"] ||
        [string isEqualToString:@"<null>"] ||
        [string isKindOfClass:[NSNull class]] ||
        string == NULL) {
        return YES;
    }
    return NO;
}

/**
 * 是否二进制字符串
 * param string 二进制字符串
 * return BOOL 是否二进制字符串
 */
+ (BOOL)zzb_isMatchedBinary:(NSString *)binaryValue {
    if ([self zzb_isNullString:binaryValue]){
        return NO;
    }
    NSString *regex = @"[01]*[.]?[01]*";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:binaryValue];;
}

/**
 * 是否八进制字符串
 * param string 八进制字符串
 * return BOOL 是否八进制字符串
 */
+ (BOOL)zzb_isMatchedOctal:(NSString *)octalValue {
    if ([self zzb_isNullString:octalValue]){
        return NO;
    }
    NSString *regex = @"[0-7]*[.]?[0-7]*";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:octalValue];
}

/**
 * 是否十进制字符串
 * param string 十进制字符串
 * return BOOL 十进制字符串
 */
+ (BOOL)zzb_isMatchedDecimal:(NSString *)decimalValue {
    if ([self zzb_isNullString:decimalValue]){
        return NO;
    }
    NSString *regex = @"[0-9]*[.]?[0-9]*";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:decimalValue];
}

/**
 * 是否十六进制字符串
 * param string 十六进制字符串
 * return BOOL 十六进制字符串
 */
+ (BOOL)zzb_isMatchedHex:(NSString *)hexValue {
    if ([self zzb_isNullString:hexValue]){
        return NO;
    }
    NSString *regex = @"[0-9A-Fa-f]*[.]?[0-9A-Fa-f]*";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:hexValue];
}

/**
 * 转换指映射表
 * return 转换指映射表字典
 */
+ (NSDictionary *)zzb_convertMapChart{
    static NSDictionary *radixDict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        radixDict = @{
            @"0": @"0",
            @"1": @"1",
            @"2": @"2",
            @"3": @"3",
            @"4": @"4",
            @"5": @"5",
            @"6": @"6",
            @"7": @"7",
            @"8": @"8",
            @"9": @"9",
            @"a": @"10",
            @"b": @"11",
            @"c": @"12",
            @"d": @"13",
            @"e": @"14",
            @"f": @"15",
            @"A": @"10",
            @"B": @"11",
            @"C": @"12",
            @"D": @"13",
            @"E": @"14",
            @"F": @"15",
        };
    });
    return radixDict;
}

@end
