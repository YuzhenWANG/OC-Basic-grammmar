//
//  ZHQTriangle.h
//  图形
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHQTriangle : NSObject
{
    int bottom;
    int height;
}

-(void)setBottom:(int)bottom andHeight:(int)height;
-(double)area;

@end
