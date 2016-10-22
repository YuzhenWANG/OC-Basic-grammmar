//
//  main.m
//  字典元素
//
//  Created by 王宇珍 on 16/10/12.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //静态字典数据
        /*.......................字典的创建和初始化.............................*/
        
        //1、用一个或多个键值对初始化一个字典对象: 以值,建,值,键,...,nil的顺序
            NSDictionary *dict01=[[NSDictionary alloc]initWithObjectsAndKeys:@"key0",@"value0",@"key1",@"value1",@"key2",@"value2", nil];
        NSLog(@"dict01:%@",dict01);
        
        NSDictionary *dict1=[NSDictionary dictionaryWithObjectsAndKeys:@123,@"key0",@456,@"key1",@678,@"key2", nil];
        NSLog(@"dict1:%@",dict1); //对
        
        
        //2、用两个数组初始化一个字典，一个key数组，一个value数组，两个数组大小必须相等，否则Crash
        NSArray *keyArray=@[@"name0",@"name1",@"name2"];
        NSArray *valueArray=@[@"hong",@"wang",@"zhao"];
        NSDictionary *dict02=[[NSDictionary alloc] initWithObjects:keyArray forKeys:valueArray];
        NSDictionary *dict2=[NSDictionary dictionaryWithObjects:valueArray forKeys:keyArray];  //对
        NSLog(@"dict02:%@",dict02);
        NSLog(@"dict2:%@",dict2);
        
        
        //3、用一个数据字典初始化另一个数据字典
        NSDictionary *dict03=[[NSDictionary alloc] initWithDictionary:dict1];
        NSDictionary *dict3=[NSDictionary dictionaryWithDictionary:dict1];
        NSLog(@"dict03:%@",dict03);
        NSLog(@"dict3:%@",dict3);
        
        
        
         /*.......................字典对象的创建和保存.............................*/
        
        //1、保存字典对象内容到文件
        //[dict3 writeToFile:@"/Users/apple/Desktop/tesk.txt" atomically:YES];
        
        //2、从之前保存的文件读取数据到字典对象
        //NSDictionary *dict4=[NSDictionary dictionaryWithContentsOfFile:@"/Users/apple/Desktop/tesk.txt"];
        //NSLog(@"dict4:%@",dict4);
        
    
        
        
        
        /*.......................字典对象元素的访问.............................*/
        
         //1、分别获取字典的所有键、值
        NSArray *allkeys=[dict1 allKeys];
        NSLog(@"allkeys:%@",allkeys);
        NSArray *allvalues=[dict1 allValues];
        NSLog(@"allvalues:%@",allvalues);
        
        //2、通过指定的key取对应的value对象,没有这个key的话.返回nil
        NSNumber *num1 = [dict1 objectForKey:@"key1"];
        NSNumber *num2 = [dict1 objectForKey:@"key5"];
        NSLog(@"%@",num1);
        NSLog(@"%@",num2);
        
        
        //3、获取字典中键值对的个数
        NSUInteger paircount=[dict2 count];
        NSLog(@"%lu",paircount);
        
        
        
        /*.......................字典的遍历.............................*/
        
        for (id key in dict1) {
            id value=[dict1 objectForKey:key];
            NSLog(@"%@=%@",key,value);
        }
        
        
        
        
        
        
        
        
        //可变字典数据
        /*.......................字典的创建和初始化.............................*/
        
        NSMutableDictionary *mDict1=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"aaa",@"name0",@"bbb",@"name1",@"ccc",@"name2", nil];
        NSLog(@"%@",mDict1);
        
        
        //1、加入元素到NSMutableDictionary中  （注意：当key值中存在要添加的键值对中的key值时，则添加，否则覆盖）
        [mDict1 setObject:@"ddd" forKey:@"name3"];
        [mDict1 setObject:@"eee" forKey:@"name1"];
        NSLog(@"add:  %@",mDict1);
        
        //2、查看 中所有元素个数：
        NSLog(@"%lu",mDict1.count);
        NSNumber *num3 =[mDict1 objectForKey:@"name1"];
        NSLog(@"%@",num3);
        NSNumber *num4 = [mDict1 objectForKey:@"name10"];
        NSLog(@"%@",num4);
        
        //3、添加其他NSMutableDictionary
        [mDict1 setValuesForKeysWithDictionary:dict1];
        NSLog(@"++++%@",mDict1);
        
        
        //4、根据key值删除
        [mDict1 removeObjectForKey:@"name1"];
        NSLog(@"---%@",mDict1);
        //5、删除所有
        [mDict1 removeAllObjects];
        NSLog(@"%@",mDict1);
        
        
        
        
        
        
        
        }
    return 0;
}
