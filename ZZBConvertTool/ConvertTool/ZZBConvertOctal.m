//
//  ZZBConvertOctal.m
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZZBConvertOctal.h"
#import "ZZBConvertHelp.h"
#import "ZZBConvertDecimal.h"

@implementation ZZBConvertOctal

/**
 * 十进制转八进制
 * param decimalValue 十进制
 * param isPoint 是否小数点部分
 * param 转换十进制值字符串
 */
+ (NSString *)zzb_octalFromDecimal:(NSString *)decimalValue isPoint:(BOOL)isPoint {
    if (isPoint) {
        NSMutableString *binary = [NSMutableString string];
        NSMutableString *newDecimal = [NSMutableString stringWithString:decimalValue];
        [newDecimal insertString:@"0." atIndex:0];
        double decimal = [newDecimal doubleValue];
        int i = 0;
        while (true) {
            double value = decimal * 8;
            NSInteger intValue = value;
            double pointValue = value - intValue;
            decimal = pointValue;
            [binary appendString:[NSString stringWithFormat:@"%@",@(intValue)]];
            i++;
            if (pointValue == 0 || i > 10) break;
        }
        return binary;
    } else {
        NSMutableString *binary = [NSMutableString string];
        long long decimal = decimalValue.longLongValue;
        while (true) {
            long remainder = decimal % 8;
            decimal = decimal / 8;
            [binary insertString:[NSString stringWithFormat:@"%ld", remainder] atIndex:0];
            if (decimal == 0) break;
        }
        return binary;
    }
}


/**
 * 二进制转八进制
 * param binary 二进制字符串
 * return 获取八进制字符串
 */
+ (NSString *)zzb_binary:(NSString *)binary{
    if(![ZZBConvertHelp zzb_isMatchedBinary:binary]){
        return nil;
    }
    NSString *decimal = [ZZBConvertDecimal zzb_binary:binary];
    return [self zzb_decimal:decimal];
}

/**
 * 十进制转八进制
 * param decimal 十进制字符串
 * return 获取八进制字符串
 */
+ (NSString *)zzb_decimal:(NSString *)decimal{
    if (![ZZBConvertHelp zzb_isMatchedDecimal:decimal]){
        return nil;
    }
    NSRange range = [decimal rangeOfString:@"."];
    if (range.location == NSNotFound){
        // decimal 是整数
        return [self zzb_octalFromDecimal:decimal isPoint:NO];
    }
    else {
        NSArray *array = [decimal componentsSeparatedByString:@"."];
        NSString *integerValue = [self zzb_octalFromDecimal:array[0] isPoint:NO];
        NSString *pointValue = [self zzb_octalFromDecimal:array[1] isPoint:YES];
        NSMutableString *stringValue = [NSMutableString string];
        [stringValue appendString:integerValue];
        if (pointValue.length > 0) {
            [stringValue appendString:@"."];
            [stringValue appendString:pointValue];
        }
        return [stringValue stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"0"]];
    }
    return nil;
}

/**
 * 十六进制转八进制
 * param hexadecimal 十六进制字符串
 * return 获取八进制字符串
 */
+ (NSString *)zzb_hex:(NSString *)hex{
    if(![ZZBConvertHelp zzb_isMatchedHex:hex]){
        return nil;
    }
    NSString *decimal = [ZZBConvertDecimal zzb_hex:hex];
    return [self zzb_decimal:decimal];
}

@end
