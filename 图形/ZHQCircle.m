//
//  ZHQCircle.m
//  图形
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ZHQCircle.h"

@implementation ZHQCircle

-(void)setRad:(int)_rad
{
    rad = _rad;
}

-(double)area
{
    return 3.14*rad*rad;
}
@end
