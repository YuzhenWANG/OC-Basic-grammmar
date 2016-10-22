//
//  WYZCircle.h
//  继承
//
//  Created by 王宇珍 on 16/9/25.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "WYZShape.h"

@interface WYZCircle : WYZShape

-(id)initWithRad:(int)_rad;   //定义新行为，与重写区分
-(double)area;

@end
