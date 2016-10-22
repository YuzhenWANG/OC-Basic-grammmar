//
//  WYZCircle.m
//  继承
//
//  Created by 王宇珍 on 16/9/25.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "WYZCircle.h"

@implementation WYZCircle

-(id)initWithRad:(int)_rad
{
    self = [super initWithWidth:_rad andWithHeight:_rad];
    return self;
}

-(double)area
{
    return 3.14*[super area];
}
@end


//半径是用父类的方法保存的，所以算面积也需要父类的area方法
