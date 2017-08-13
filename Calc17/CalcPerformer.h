//
//  CalcPerformer.h
//  Calc10
//
//  Created by zub on 8/5/16.
//  Copyright (c) 2016 zub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalcPerformer : NSObject

+(void)ExecCommand: (int)Command; //Perfom operation
+(void)Insert:  (NSString*)Value; //Prepering value
+(void)Erase; //Erase value
+(NSString*)GetResult;  //Get result in to string format
+(NSString*)GetDisplay; //Get Current Display value
@end
