//
//  SubtractingCounter.h
//  AppCount
//
//  Created by 王炜圣 on 16/2/25.
//  Copyright © 2016年 weisheng.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM (NSInteger, WSubtractingCounterType) {
    NS_ENUM_Type_Addition = 0,      //A+B       15+3 = 18
    NS_ENUM_Type_Subtraction,       //A-B       15-3 = 12
    NS_ENUM_Type_Multiplication,    //A*B		15*3 = 45
    NS_ENUM_Type_Division,          //A/B       15/3 = 5
    NS_ENUM_Type_Power,             //A的B次方   15*15*15=
    NS_ENUM_Type_10Power            //A*10的B次方 A * 10*10*10
};
@interface WSubtractingCounter : NSObject
+ (NSString *)WSubtractingCounter:(NSString *)stringA
                            withB:(NSString *)stringB
                         withType:(WSubtractingCounterType)type;
@end
