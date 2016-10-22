//
//  WYZShape.m
//  继承
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "WYZShape.h"

@implementation WYZShape

- (id)init//重写了父类中的init  子类行为把父类行为覆盖掉了
{
    self = [super init];
    if (self) {
        width=0;
        height=0;
    }
    return self;
}//如果用这个init 直接赋值为0

-(id)initWithWidth:(int)_width andWithHeight:(int)_height
{
    //自己定制的初始化行为，语法固定
    //必须去调用父类的初始化行为，这是约定
    self = [super init];  //可以指定宽度高度
    if(self) //如果从父类初始化中得到了有效对象
    {
        width=_width;
        height=_height;
    }
    return self;
}

-(int)area
{
    return width*height;
}
@end
