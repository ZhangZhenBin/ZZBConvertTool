//
//  ZZBConvertDecimal.m
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZZBConvertDecimal.h"
#import "ZZBConvertHelp.h"

@implementation ZZBConvertDecimal

/**
 * 其他进制转十进制
 * param radix 其他进制
 * param radixValue 其他进制值
 * param isPoint 是否小数点部分
 * param 转换十进制值字符串
 */
+ (NSString *)zzb_decimalFromRadix:(NSUInteger)radix
                        radixValue:(NSString *)radixValue
                           isPoint:(BOOL)isPoint {
    if (isPoint) {
        double value = 0;
        for (int i = 0; i < radixValue.length; i++) {
            NSString *subString = [radixValue substringWithRange:NSMakeRange(i, 1)];
            int index = -(i + 1);
            value += [[self zzb_getDecimalWithRadixValue:subString] doubleValue] * pow(radix, index);
        }
        NSString* pointStr = [NSString stringWithFormat:@"%0.10f", value];
        NSArray *arrayNum = [pointStr componentsSeparatedByString:@"."];
        if(arrayNum.count>=2){
            return arrayNum[1];
        }
        return 0;
    } else {
        long long value = 0;
        for (int i = (int)radixValue.length - 1; i >= 0; i--) {
            NSString *subString = [radixValue substringWithRange:NSMakeRange(i, 1)];
            int index = (int)radixValue.length - 1 - i;
            value += [[self zzb_getDecimalWithRadixValue:subString] longLongValue] * pow(radix, index);
        }
        return [NSString stringWithFormat:@"%lld", value];
    }
}

/**
 * 将其他进制的字符转成十进制字符串
 * param radixValue 其他进制的字符
 * param 十进制字符串
 */
+ (NSString *)zzb_getDecimalWithRadixValue:(NSString *)radixValue {
    NSDictionary *dict = [ZZBConvertHelp zzb_convertMapChart];
    NSString *map = [dict objectForKey:radixValue];
    return [ZZBConvertHelp zzb_isNullString:map] ? @"0" : map;
}

/**
 * 将其他进制的字符串转成十进制字符串
 * param radixValue 其他进制的字符串
 * param 十进制字符串
 */
+ (NSString *)zzb_getDecimalRadix:(NSInteger)radix radixValue:(NSString *)radixValue{
    NSRange range = [radixValue rangeOfString:@"."];
    if (range.location == NSNotFound) {
        return [self zzb_decimalFromRadix:radix radixValue:radixValue isPoint:NO];
    }
    else{
        NSArray *array = [radixValue componentsSeparatedByString:@"."];
        NSString *intValue = [self zzb_decimalFromRadix:radix radixValue:array[0] isPoint:NO];
        NSString *pointValue = [self zzb_decimalFromRadix:radix radixValue:array[1] isPoint:YES];
        NSMutableString *stringValue = [NSMutableString string];
        [stringValue appendString:intValue];
        if (pointValue.length > 0) {
            [stringValue appendString:@"."];
            [stringValue appendString:pointValue];
        }
        // stringByTrimmingCharactersInSet 去除两端0字符
        return [stringValue stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"0"]];
    }
}

/**
 * 二进制转十进制
 * param binary 二进制字符串
 * return 获取十进制字符串
 */
+ (NSString *)zzb_binary:(NSString *)binary{
    if(![ZZBConvertHelp zzb_isMatchedBinary:binary]){
        return nil;
    }
    return [self zzb_getDecimalRadix:2 radixValue:binary];
}

/**
 * 八进制转十进制
 * param octal 八进制字符串
 * return 获取十进制字符串
 */
+ (NSString *)zzb_octal:(NSString *)octal{
    if(![ZZBConvertHelp zzb_isMatchedOctal:octal]){
        return nil;
    }
    return [self zzb_getDecimalRadix:8 radixValue:octal];
}

/**
 * 十六进制转十进制
 * param hex 十六进制字符串
 * return 获取十进制字符串
 */
+ (NSString *)zzb_hex:(NSString *)hex{
    if(![ZZBConvertHelp zzb_isMatchedHex:hex]){
        return nil;
    }
    return [self zzb_getDecimalRadix:16 radixValue:hex];
}

@end
