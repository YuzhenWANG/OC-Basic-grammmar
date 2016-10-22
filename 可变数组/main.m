//
//  main.m
//  可变数组
//
//  Created by 王宇珍 on 16/10/12.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.创建
        NSMutableArray *array = [[NSMutableArray alloc]init];
        NSMutableArray *array1 = [NSMutableArray array];
        
        //Capacity容量指示为了提高代码阅读性 数组实际的对象个数可以超过这个值
        NSMutableArray *array2 = [NSMutableArray arrayWithCapacity:4];
        NSLog(@"%@",array);
        NSLog(@"%@",array1);
        NSLog(@"%@",array2);
        
        
        
        
        
        
        //2.
        //1.增：添加对象
        //添加对象 至数组末端
        [array addObject:@"objc"];
        NSLog(@"array: %@",array);
        
        //插入对象
        [array insertObject:@"abcd" atIndex:0];
        [array insertObject:@"zzzz" atIndex:1];
        NSLog(@"array: %@",array);
        
        //；批量添加 至数组末端
        [array addObjectsFromArray:@[@"hhhhh",@"uuuuu"]];
        NSLog(@"array: %@",array);
        
        
        
        //2.改：修改 替换对象
        NSArray *constArray = @[@"q",@"w",@"e",@"r"];
        
        //替换对象 通过index
        [array replaceObjectAtIndex:0 withObject:@"0000"];
        NSLog(@"array: %@",array);
        
        //使用参数数组的所有元素 替换 目标数组的部分元素
        [array replaceObjectsInRange:NSMakeRange(3,2) withObjectsFromArray:constArray];
        NSLog(@"%@",array);    //(3,2)代表从index3开始 替换掉原来的2个元素
        
        //截取参数数组的部分元素 替换 目标数组的部分元素
        [array replaceObjectsInRange:NSMakeRange(3, 2) withObjectsFromArray:constArray range:NSMakeRange(2,2)];
        NSLog(@"%@",array);
        
        //交换两个元素的位置
        [array exchangeObjectAtIndex:4 withObjectAtIndex:5];
        NSLog(@"%@",array);
        
        
       
        
        
        
        //3.删：移除对象
        
        //删除指定下标的对象
        [array removeObjectAtIndex:0];
        NSLog(@"%@",array);
        
        //删除指定对象
        [array removeObject:@"abcd"];

        //删除末端对象
        [array removeLastObject];
        
        //删除某个区间内的某个对象
        //[array removeObject:@"zzzz" inRange:NSMakeRange(0,2)];
        //删除所有对象
        //[array removeAllObjects];
        
        //根据参数数组批量删除
        [array removeObjectsInArray:@[@"hhhhh",@"uuuuu"]];
        NSLog(@"%@",array);
        
        //删除某个区间内的对象
        //[array removeObjectsInRange:(NSrage)]
        
        
      
        
        
        //4.查：数组的遍历
        
        NSObject *obj = [[NSObject alloc]init];
        
        NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
        [muArray addObject:@"对象1"];
        [muArray addObject:@"对象2"];
        [muArray addObject:@"对象3"];
        [muArray addObject:@"对象4"];
        [muArray addObject:obj];
        
        NSEnumerator *enmuerator = [muArray objectEnumerator];
        id object;
        while (object = [enmuerator nextObject]) {
            NSLog(@"数组中的对象：%@", object);
        }
        
        
        //5. 数组的排序
        [array sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"%@",array);
        
        
        
        
        
    }
    return 0;
}
