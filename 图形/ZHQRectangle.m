//
//  ZHQRectangle.m
//  图形
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ZHQRectangle.h"

@implementation ZHQRectangle

-(void)setWidth:(int)_w
{
    width = _w;

}

-(void)setHeight:(int)_h
{
    height = _h;
}


-(int)area
{
    return width*height;
}

+(id)rectangle
{
    return [[[self class]alloc]init];
    
}

-(int)width
{
    return width;
}

-(int)height
{
    return height;
}
@end
