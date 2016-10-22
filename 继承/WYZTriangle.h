//
//  WYZTriangle.h
//  继承
//
//  Created by 王宇珍 on 16/9/25.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "WYZShape.h"

@interface WYZTriangle : WYZShape
-(id)initWithBottom:(int)_bot andWithHight:(int)_hight;
-(double)area;

@end
