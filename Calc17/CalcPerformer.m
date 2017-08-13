//
//  CalcPerformer.m
//  Calc10
//
//  Created by zub on 8/5/16.
//  Copyright (c) 2016 zub. All rights reserved.
//

#import "CalcPerformer.h"
#import "Calculator.h"
static NSString* Display = @"";  //Result for display
static float StartValue = 0;     //Value before operation
static float Result = 0;         //Value after operation
static int   LastCommand = 500;  //Command
static BOOL  Start = false;       //Indifier is entering new value was started
static BOOL  Calculated = false;  //Indifier is calculated
static BOOL  Dot = false;
@implementation CalcPerformer

/*Perfom operation*/
+(void)ExecCommand: (int)Command {
   
    if(Start == false)
    {
            Start = true;
            StartValue = [Display floatValue];
            LastCommand = Command;
            Display = @"";
    }
        else
        {
            Calculator *calc = [[Calculator alloc] init];
            Result = [calc Calculate: StartValue : [Display floatValue] : LastCommand ];
            
            Display = [NSString stringWithFormat:@"%f", Result];
            LastCommand = Command;
            StartValue = Result;
            Start = true;
            if(LastCommand == 500) Start = false;
            Calculated = true;
        }
    Dot = false;
}
/*Erase display*/
+(void)Erase{
    Dot = false;
    Display = @"";
    Start = false;
    StartValue = 0;
    Result = 0;
    LastCommand = 500;
}

/*Prepearing value*/
+(void)Insert:  (NSString*)Value{
    /*Insert new value after calculation*/
        if(Calculated == true){
            Display = @"";
            Calculated = false;
        }
    /*Dot has to be only onse*/
    if([@"." isEqualToString:Value]) {
        if (Dot == false){
            Display = [Display stringByAppendingString: Value];
            Dot = true;
        }
    }else{
        Display = [Display stringByAppendingString: Value];
    }
}
/*Elevate result*/
+(NSString*)GetResult{
    return [NSString stringWithFormat:@"%f", Result];
}
//Elevate current display
+(NSString*)GetDisplay{
    return Display;
}

@end
