//
//  ZZBConvertHex.m
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZZBConvertHex.h"
#import "ZZBConvertHelp.h"
#import "ZZBConvertDecimal.h"

@implementation ZZBConvertHex

/**
 * 其他进制转十进制
 * param decimalValue 十进制
 * param isPoint 是否小数点部分
 * param 转换十进制值字符串
 */
+ (NSString *)zzb_hexFromDecimal:(NSString *)decimalValue isPoint:(BOOL)isPoint {
    if (isPoint) {
        NSMutableString *binary = [NSMutableString string];
        NSMutableString *newDecimal = [NSMutableString stringWithString:decimalValue];
        [newDecimal insertString:@"0." atIndex:0];
        double decimal = [newDecimal doubleValue];
        int i = 0;
        while (true) {
            double value = decimal * 16;
            NSInteger intValue = value;
            double pointValue = value - intValue;
            decimal = pointValue;
            [binary appendString:[self getHexStrWithOneInt:intValue]];
            i++;
            if (pointValue == 0 || i > 10) break;
        }
        return binary;
    } else {
        NSMutableString *binary = [NSMutableString string];
        long long decimal = decimalValue.longLongValue;
        while (true) {
            long remainder = decimal % 16;
            decimal = decimal / 16;
            [binary insertString:[self getHexStrWithOneInt:remainder] atIndex:0];
            if (decimal == 0) break;
        }
        return binary;
    }
}

+ (NSString *)getHexStrWithOneInt:(NSInteger)oneInt{
    if(oneInt>=0 || oneInt <=9){
        return [NSString stringWithFormat:@"%@", @(oneInt)];
    }
    else if(oneInt == 10){
        return @"a";
    }
    else if(oneInt == 11){
        return @"b";
    }
    else if(oneInt == 12){
        return @"c";
    }
    else if(oneInt == 13){
        return @"d";
    }
    else if(oneInt == 14){
        return @"e";
    }
    else if(oneInt == 15){
        return @"f";
    }
    return @"0";
}


/**
 * 二进制转十六进制
 * param binary 二进制字符串
 * return 获取十六进制字符串
 */
+ (NSString *)zzb_binary:(NSString *)binary{
    if(![ZZBConvertHelp zzb_isMatchedBinary:binary]){
        return nil;
    }
    NSString *decimal = [ZZBConvertDecimal zzb_binary:binary];
    return [self zzb_decimal:decimal];
}

/**
 * 八进制转十六进制
 * param octal 八进制字符串
 * return 获取十六进制字符串
 */
+ (NSString *)zzb_octal:(NSString *)octal{
    if(![ZZBConvertHelp zzb_isMatchedOctal:octal]){
        return nil;
    }
    NSString *decimal = [ZZBConvertDecimal zzb_octal:octal];
    return [self zzb_decimal:decimal];
}

/**
 * 十进制转十六进制
 * param decimal 十进制字符串
 * return 获取十六进制字符串
 */
+ (NSString *)zzb_decimal:(NSString *)decimal{
    if (![ZZBConvertHelp zzb_isMatchedDecimal:decimal]){
        return nil;
    }
    NSRange range = [decimal rangeOfString:@"."];
    if (range.location == NSNotFound){
        // decimal 是整数
        return [self zzb_hexFromDecimal:decimal isPoint:NO];
    }
    else {
        NSArray *array = [decimal componentsSeparatedByString:@"."];
        NSString *integerValue = [self zzb_hexFromDecimal:array[0] isPoint:NO];
        NSString *pointValue = [self zzb_hexFromDecimal:array[1] isPoint:YES];
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

@end
