//
//  SubtractingCounter.m
//  AppCount
//
//  Created by 王炜圣 on 16/2/25.
//  Copyright © 2016年 weisheng.wang. All rights reserved.
//

#import "WSubtractingCounter.h"

@implementation WSubtractingCounter
+ (NSString *)getCount:(NSString *)valueA
                valueB:(NSString *)valueB
                states:(SubtractState)state{
    BOOL A = [WSubtractingCounter isNumber:valueA];
    NSAssert(A,@"valueA is not number");
    BOOL B = [WSubtractingCounter isNumber:valueB];
    NSAssert(B,@"valueB is not number");
    NSString *stringResult;
    NSDecimalNumber *amountNum = [NSDecimalNumber decimalNumberWithString:valueA];
    NSDecimalNumber *toMoneyNum = [NSDecimalNumber decimalNumberWithString:valueB];
    switch (state) {
        case NS_ENUM_Type_Add:        //A+B
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByAdding:toMoneyNum];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_Sub:    //A-B
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberBySubtracting:toMoneyNum];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_Mul: //A*B
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByMultiplyingBy:toMoneyNum];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_Div:       //A/B
        {
            if (toMoneyNum.floatValue != 0) {
                NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByDividingBy:toMoneyNum];
                stringResult = subTracFeeNum.stringValue;
            }else
            {
                BOOL res = valueB.floatValue != 0;
                stringResult = @"除数不能为0";
                NSAssert(res, @"除数不能为0");
            }
        } break;
            
        case NS_ENUM_Type_Pow:        //A的B次方
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByRaisingToPower:[valueB integerValue]];
            stringResult = subTracFeeNum.stringValue;
        } break;
            
        case NS_ENUM_Type_10Power:      //A*10的B次方
        {
            NSDecimalNumber *subTracFeeNum = [amountNum decimalNumberByMultiplyingByPowerOf10:[valueB floatValue]];
            stringResult = subTracFeeNum.stringValue;
        } break;
    }
    return stringResult;
}
+ (BOOL)isNumber:(NSString *)strValue
{
    if (strValue == nil || [strValue length] <= 0)
    {
        return NO;
    }
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789."] invertedSet];
    NSString *filtered = [[strValue componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    if (![strValue isEqualToString:filtered])
    {
        return NO;
    }
    return YES;
}
@end
