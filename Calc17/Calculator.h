//
//  Calculator.h
//  Calc10
//
//  Created by zub on 8/5/16.
//  Copyright (c) 2016 zub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject{
    
int ErrCode;   //Error code after operation
    
}


/*Doing calculation*/
- (float)Calculate: (float)Result : (float)Value : (int)Command;

@end
