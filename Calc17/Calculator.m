//
//  Calculator.m
//  Calc10
//
//  Created by zub on 8/5/16.
//  Copyright (c) 2016 zub. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

/*transformation input into output by simple calculation*/
- (float)Calculate: (float)Result : (float)Value : (int)Command{
    
    switch (Command) {
        case 500: return  Result; //Equal
        case 400: return  Result + Value; //addition
        case 300: return  Result - Value; //substraction
        case 200: return  Result * Value; //multication
        //division
        case 100:
            @try {
                 return   Result / Value;
            }
            @catch (NSException *exception) {
                ErrCode = 1; //division by zero
                return Result;
            }
        
            break;
        default: return Result;
    }
}

@end
