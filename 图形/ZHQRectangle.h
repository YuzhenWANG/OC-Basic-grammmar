//
//  ZHQRectangle.h
//  图形
//
//  Created by 王宇珍 on 16/9/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHQRectangle : NSObject

{
    int width;
    int height;
}

-(void)setWidth:(int)_w;
-(void)setHeight:(int)_h;
-(int)width;
-(int)height;
-(int)area;
+(id)rectangle;  //工厂行为。或类行为  id用于产生对象

@end
