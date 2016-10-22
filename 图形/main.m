//
//  main.m
//  图形
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHQRectangle.h"
#import "ZHQSquare.h"
#import "ZHQCircle.h"
#import "ZHQTriangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ZHQRectangle *rect = [ZHQRectangle rectangle];
//        [rect setWidth:200];
//        [rect setHeight:100];
        rect.width=200;
        rect.height=100;  //点操作符是一个行为的调用。如果是对.赋值的话，那么就是调用setWidth行为
        NSLog(@"这个长方形的面积是%d",[rect area]);
        NSLog(@"长方形的高是%d",[rect height]);
        
        
        ZHQSquare *squa =[[ZHQSquare alloc]init];
        //[squa setSide:100];
        squa.side =100;
        NSLog(@"这个正方形是%d",[squa area]);
        
        ZHQCircle *circle = [[ZHQCircle alloc]init];
        [circle setRad:10];
        double d =[circle area];
        NSLog(@"这个圆是%g",d);
        
        ZHQTriangle *tri = [[ZHQTriangle alloc]init];
        [tri setBottom:10 andHeight:10];
        double e = [tri area];
        NSLog(@"这个三角形是%g",e);
        
    }
    return 0;
}
