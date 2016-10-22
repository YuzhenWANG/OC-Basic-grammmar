//
//  main.m
//  字符串
//
//  Created by 王宇珍 on 16/9/26.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool { //自动释放池
        
        //初始化(工厂行为、对象初始化)
        //行为
        //NSString 静态字符串
        //NSMutableString 动态字符串
        
        
        
        //NSString 静态字符串
        //工厂行为（类的行为）,主要目的是创建对象
        NSString *str=[NSString stringWithFormat:@"%d",123];
        NSLog(@"%@",str);
        
        NSString *str1=[NSString stringWithUTF8String:"哈哈"]; //这个可以直接写汉字
        NSLog(@"%@",str1);
        
        //大小写转换
        NSString *str2 = @"aBc1";
        NSLog(@"%@",str2);
        str2 = [str2 uppercaseString];
        NSLog(@"%@",str2);
        
        //统计大小写个数
        NSString *str3=@"哈哈123";
        NSLog(@"%u",[str3 length]);
        NSLog(@"%u", [str3 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        
        
        //判断字符串中是否有特定字符串
        NSString *str4=@"12.3";
        NSRange range=[str4 rangeOfString:@"2."]; //本身是结构，定义不用指针
        if(range.location == NSNotFound)
        {
            NSLog(@"not found");
        }
        else{
        NSLog(@"range = %d",range.length);
        NSLog(@"location = %d",range.location);
        }
        
        //判断字符串和另一个字符串是否相等
        NSString *str5 = @"1234";
        if([str5 isEqualToString:@"1234"])
            NSLog(@"yes");
        else
            NSLog(@"no");
        
        //字符串转换成数值
        int a=[str5 intValue];
        NSLog(@"%d",a);
        
        
        //是否以某个字符串开头或结尾
        BOOL b = [str5 hasPrefix:@"1"];
        if (b) {
            NSLog(@"yes it begins with it");}
        BOOL c = [str5 hasSuffix:@"4"];
        if (c) {
            NSLog(@"yes it finishes with it");}
        
        
        //提取子字符串
        NSString *str6 = @"123.4";
        NSLog(@"%@", [str6 substringFromIndex:2]);   //到结尾
        NSLog(@"%@", [str6 substringToIndex:2]);     //从头开始
        NSRange rang = {1,3};
        NSLog(@"%@", [str6 substringWithRange:rang]);  //中间一段
        
        NSRange r={0,1};   //依次显示
        for (int i=str6.length-1; i>=0; i--) {
            r.location =i;
            NSLog(@"%@",[str6 substringWithRange:r]);
        }
        
        //删除字符串两端空格
        NSString *str7=@"123";
        NSString *str8=@" 456";
        str8=[str8 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        NSString *str9=@"7";
        NSLog(@"%@%@%@",str7,str8,str9);
        
        //两字符串相加
        str7=[NSString stringWithFormat:@"%@%@",str7,@"123"];
        NSLog(@"%@",str7);
        
        str7=[str stringByAppendingString:@"123"];
        NSLog(@"%@",str7);
        
        
        
        
        
        
        
        
        //NSMutableString 动态字符串
        NSMutableString *str10 = [NSMutableString stringWithCapacity:100]; //动态字符串尽量不要赋初值。
        [str10 appendString:@"123"];      //末尾追加
        NSLog(@"%@",str10);
        
        NSRange r2={0,2};
        [str10 replaceCharactersInRange:r2 withString:@"sdf"];  //替换
        NSLog(@"%@",str10);
        
        [str10 insertString:@"welcome" atIndex:2];   //插入
        NSLog(@"%@",str10);
        
        [str10 deleteCharactersInRange:r2];  //删除
        NSLog(@"%@",str10);
        
        [str10 appendFormat:@"%d%@",123,@".com"]; //格式化追加字符串
        NSLog(@"%@",str10);
        
        
        [str10 setString:@"welcome to china"];   //直接用输入的字符串替换原字符串
        NSLog(@"%@",str10);
        
        [str10 replaceCharactersInRange:r2 withString:@"like "]; //替换某一段字符串
        NSLog(@"%@",str10);
        
        NSRange r3 ={0,20};                         //替换指定字符串
        NSMutableString *str11 = [NSMutableString stringWithUTF8String:"hello world world china world hello"];
        [str11 replaceOccurrencesOfString:@"world" withString:@"baidu" options:NSLiteralSearch range:r3];
        NSLog(@"%@",str11);
        
    }
    return 0;
}
