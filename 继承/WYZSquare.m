//
//  WYZSquare.m
//  继承
//
//  Created by 王宇珍 on 16/9/25.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "WYZSquare.h"

@implementation WYZSquare

-(id)initWithSide:(int)_side
{
    self=[super initWithWidth:_side andWithHeight:_side]; //初始化调用自己定义的新的行为, 不是继承的
    return  self;
}
@end
