//
//  WYZTriangle.m
//  继承
//
//  Created by 王宇珍 on 16/9/25.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "WYZTriangle.h"

@implementation WYZTriangle
-(id)initWithBottom:(int)_bot andWithHight:(int)_hight
{
    self= [super initWithWidth:_bot andWithHeight:_hight];
    return self;
}

-(double)area
{
    return 0.5*[super area];
}
@end
