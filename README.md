# ZZBConvertTool

#### pods 加载到项目
> pod 'ZZBConvertTool'

#### ZZBConvertTool.h

> 转换工具头文件

~~~
#import "ZZBConvertDecimal.h"
#import "ZZBConvertBinary.h"
#import "ZZBConvertOctal.h"
#import "ZZBConvertHex.h"
#import "ZZBConvertHelp.h"
~~~

#### ZZBConvertBinary

> 八进制、十进制、十六进制转二进制

例如：
~~~
   NSLog(@"八进制转二进制:11.11->%@", [ZZBConvertBinary zzb_octal:@"11.11"]);
   NSLog(@"十进制转二进制:11.11->%@", [ZZBConvertBinary zzb_decimal:@"11.11"]);
   NSLog(@"十六进制转二进制:11.11->%@", [ZZBConvertBinary zzb_hex:@"11.11"]);
~~~

#### ZZBConvertOctal

> 二进制、十进制、十六进制转八进制

例如：
~~~
   NSLog(@"二进制转八进制:11.11->%@", [ZZBConvertOctal zzb_binary:@"11.11"]);
   NSLog(@"十进制转八进制:11.11->%@", [ZZBConvertOctal zzb_decimal:@"11.11"]);
   NSLog(@"十六进制转八进制:11.11->%@", [ZZBConvertOctal zzb_hex:@"11.11"]);
~~~

#### ZZBConvertDecimal

> 二进制、八进制、十六进制转十进制

例如：
~~~
   NSLog(@"二进制转十进制:11.11->%@", [ZZBConvertDecimal zzb_binary:@"11.11"]);
   NSLog(@"八进制转十进制:11.11->%@", [ZZBConvertDecimal zzb_octal:@"11.11"]);
   NSLog(@"十六进制转十进制:11.11->%@", [ZZBConvertDecimal zzb_hex:@"11.11"]);
~~~


#### ZZBConvertHex

> 二进制、八进制、十进制转十六进制

例如：
~~~
   NSLog(@"二进制转十六进制:11.11->%@", [ZZBConvertHex zzb_binary:@"11.11"]);
   NSLog(@"八进制转十六进制:11.11->%@", [ZZBConvertHex zzb_octal:@"11.11"]);
   NSLog(@"十进制转十六进制:11.11->%@", [ZZBConvertHex zzb_decimal:@"11.11"]);
~~~

#### ZZBConvertHelp

> 转换帮助工具



