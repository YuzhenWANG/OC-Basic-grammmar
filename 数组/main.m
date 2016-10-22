//
//  main.m
//  数组
//
//  Created by 王宇珍 on 16/10/10.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
// 参考博客 http://www.jianshu.com/p/c8caa30afd9d
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*____________________静态数组__________________________*/
        
        
        //1)创建一个空数组
        NSArray *arr1 = [NSArray array];
        
        //2)创建数组,只有一个元素
        NSArray *arr2 = [NSArray arrayWithObject:@"1"];
        
        //3)创建数组,有多个元素
        // nil 表示数组赋值结束
        // 常见写法
        NSArray *arr3 = [NSArray arrayWithObjects:@"one",@"two",@1, nil];
        NSLog(@"arr3 = %@",arr3);
        //4)调用对象方法,创建数组
        //nil Nil NULL  NSNULL
        NSArray *arr4 = [[NSArray alloc] initWithObjects:@"three",[NSNull null],@"four", nil];
        NSLog(@"arr4 = %@",arr4);
        //5)用一个数组可以创建另外一个数组
        NSArray *arr5 = [NSArray arrayWithArray:arr3];
    
        
        
        
        
        
        //常用方法
        NSArray *arr6 = [NSArray arrayWithObjects:@"one",@"two",@1,@"three", nil];
        NSLog(@"arr6 = %@",arr6);
        
        //1)获取数组的长度  count获取数组的元素的个数
        NSLog(@"%ld",arr6.count);
        
        //2)根据下标,获取下标对应的对象
        NSLog(@"%@",[arr6 objectAtIndex:3]);
        
        //3)返回元素的下标
        NSUInteger loc = [arr6 indexOfObject:@"three"];
        NSLog(@"%ld",loc);
        
        //4)数组中是否包含了某个元素
        if([arr6 containsObject:@"four"]){
            
            NSLog(@"包含此元素");
            
        }else{
            
            NSLog(@"不包含");
        }
        NSLog(@"arr6 = %@",arr6);
        
        
        
        
        //遍历
        //定义一个数组
        NSArray *arr = @[@"one",@"two",@"three",@"four"];
        
        //对数组进行遍历
        
        //1) 普通的方式,通过下标访问
        for (int i=0; i<arr.count; i++) {
            NSLog(@"-> %@",arr[i]);
        }
        
        //2) 快速枚举法 for循环的增强形式
        for (NSString * str in arr) {
            NSLog(@"---> %@",str);
        }
        
        
        //3) 使用block的方式,进行访问
        //                               数组元素            元素下标     是否停止
        //stop:YES  会停止, stop:NO 不会停止
        [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
            if(idx == 2){
                
                *stop = YES;  //停止  // break;
                
            }else{
                
                NSLog(@"idx = %ld,obj = %@",idx,obj);
            }
            
            
        }];
        
        

        
        
        
        
        
        
        
    }
    return 0;
}
