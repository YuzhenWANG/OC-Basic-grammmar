//
//  main.m
//  继承
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WYZShape.h"  //<>是从系统中查找，“”是从工程下查找
#import "WYZRectangle.h"
#import "WYZSquare.h"
#import "WYZCircle.h"
#import "WYZTriangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id s=[[WYZCircle alloc]initWithRad:10];
        SEL sel=@selector(area);
        BOOL b=[s respondsToSelector:sel];
        
        if (b)
        {
            NSLog(@"true");
            [s performSelector:sel];  //调用行为
        }
    }
    return 0;
}

//多态：使不同的类共享相同方法名称的能力，允许将子类类型的指针赋值给父类类型的指针
//多态的前提：子类复写了父类的方法

//动态绑定和id类型
//id是通用的对象类型，可以用来存储属于任何类的对象  id = void *, 所以id后不再加*
//但是存储在id变量中的对象类型在编译时无法确定，所以一些测试推迟到运行时进行
//使用动态类型调用一个方法，注意规则：如果在多个类中实现名称相同的方法，那么每个方法都必须符合各个参数的类型和返回值的类型
