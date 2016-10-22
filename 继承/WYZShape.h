//
//  WYZShape.h
//  继承
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WYZShape : NSObject
{
    int width;
    int height;
}

-(id)initWithWidth:(int)_width andWithHeight:(int)_height;
//自定义的初始化函数 申请空间的同时赋初始值
-(int)area;
@end
