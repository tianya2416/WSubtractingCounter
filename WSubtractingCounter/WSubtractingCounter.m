//
//  SubtractingCounter.m
//  AppCount
//
//  Created by 王炜圣 on 16/2/25.
//  Copyright © 2016年 weisheng.wang. All rights reserved.
//

#import "WSubtractingCounter.h"

@implementation WSubtractingCounter
+ (NSString *)WSubtractingCounter:(NSString *)stringA
                                withB:(NSString *)stringB
                             withType:(WSubtractingCounterType)type
{
    if (![stringA length] || ![stringB length]) {
        return nil;
    }
    NSString *stringResult;
    NSDecimalNumber *amountNum = [NSDecimalNumber decimalNumberWithString:stringA];
    NSDecimalNumber *toMoneyNum = [NSDecimalNumber decimalNumberWithString:stringB];
    switch (type) {
        case NS_ENUM_Type_Addition:        //A+B
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByAdding:toMoneyNum];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_Subtraction:    //A-B
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberBySubtracting:toMoneyNum];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_Multiplication: //A*B
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByMultiplyingBy:toMoneyNum];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_Division:       //A/B
        {
            if (toMoneyNum.floatValue != 0) {
                NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByDividingBy:toMoneyNum];
                stringResult = subTracFeeNum.stringValue;
            }else
            {
                stringResult = @"除数不能为0";
            }
        } break;
            
        case NS_ENUM_Type_Power:        //A的B次方
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByRaisingToPower:[stringB integerValue]];
            stringResult = subTracFeeNum.stringValue;
        } break;

        case NS_ENUM_Type_10Power:      //A*10的B次方
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByMultiplyingByPowerOf10:[stringB floatValue]];
            stringResult = subTracFeeNum.stringValue;
        } break;
    }
    return stringResult;
}
@end
