//
//  ViewController.m
//  ZZBConvertTool
//
//  Created by apple on 2019/3/27.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZZBConvertTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"八->二:11.11->%@", [ZZBConvertBinary zzb_octal:@"11.11"]);
    NSLog(@"十->二:11.11->%@", [ZZBConvertBinary zzb_decimal:@"11.11"]);
    NSLog(@"十六-二:11.11->%@", [ZZBConvertBinary zzb_hex:@"11.11"]);
    
    NSLog(@"二->八:11.11->%@", [ZZBConvertOctal zzb_binary:@"11.11"]);
    NSLog(@"十->八:11.11->%@", [ZZBConvertOctal zzb_decimal:@"11.11"]);
    NSLog(@"十六-八:11.11->%@", [ZZBConvertOctal zzb_hex:@"11.11"]);
    
    NSLog(@"二->十:11.11->%@", [ZZBConvertDecimal zzb_binary:@"11.11"]);
    NSLog(@"八->十:11.11->%@", [ZZBConvertDecimal zzb_octal:@"11.11"]);
    NSLog(@"十六->十:11.11->%@", [ZZBConvertDecimal zzb_hex:@"11.11"]);
    
    NSLog(@"二->十六:11.11->%@", [ZZBConvertHex zzb_binary:@"11.11"]);
    NSLog(@"八->十六:11.11->%@", [ZZBConvertHex zzb_octal:@"11.11"]);
    NSLog(@"十->十六:11.11->%@", [ZZBConvertHex zzb_decimal:@"11.11"]);
}


@end
