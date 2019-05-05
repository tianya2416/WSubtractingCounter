//
//  SubtractingCounter.h
//  AppCount
//
//  Created by 王炜圣 on 16/2/25.
//  Copyright © 2016年 weisheng.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM (NSInteger, SubtractState) {
    NS_ENUM_Type_Add = 0,       //A+B       A+B = 18
    NS_ENUM_Type_Sub,           //A-B       A-B = 12
    NS_ENUM_Type_Mul,           //A*B		A*B = 45
    NS_ENUM_Type_Div,           //A/B       A/B = 5
    NS_ENUM_Type_Pow,           //A的3次方   A*A*A=
    NS_ENUM_Type_10Power        //A*10的3次方 A * 10*10*10
};
@interface WSubtractingCounter : NSObject

/**
 @breif 使用字符串计算值
 @param valueA
 @param valueB
 @param state
 @return 
 */
+ (NSString *)getCount:(NSString *)valueA
                valueB:(NSString *)valueB
                states:(SubtractState)state;
@end
