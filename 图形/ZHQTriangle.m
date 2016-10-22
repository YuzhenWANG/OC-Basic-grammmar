//
//  ZHQTriangle.m
//  图形
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ZHQTriangle.h"

@implementation ZHQTriangle
-(void)setBottom:(int)bottom andHeight:(int)height  //行为前的减号：对象的行为
{
    self->bottom=bottom;
    self->height=height;
}

-(double)area
{
    return 0.5*bottom*height;
}

@end
