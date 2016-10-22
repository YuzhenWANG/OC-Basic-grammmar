//
//  main.m
//  常用结构
//
//  Created by 王宇珍 on 16/9/26.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //点 大小 矩形 范围
        //尤其适用于游戏开发设计，图形开发设计
        
        CGPoint p={100,100};
       // CGPoint p=CGPointMake(10, 10);
        NSLog(@"x=%g, y=%g",p.x,p.y);
        
        CGSize size;
        size.height=100;
        size.width=10;
        NSLog(@"height=%g, width=%g",size.height, size.width);
        
        CGRect rect;
        rect.origin=CGPointMake(10,10); //左上角起点
        rect.size.width=200;
        rect.size.height=100;
        //CGRect rect2 = CGRectMake(10, 10, 200, 100);
        
    
        NSRange range;  //查找比如特定字符串在哪个位置 一维的？
        range.location=10;
        range.length=10;
    
    }
    return 0;
}
