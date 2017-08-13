//
//  ViewController.m
//  Calc17
//
//  Created by zub on 8/9/16.
//  Copyright (c) 2016 zub. All rights reserved.
//

#import "ViewController.h"
#import "CalcPerformer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(UIButton *)sender {
    //_Label1.text = [NSString stringWithFormat:@"%d" , [sender tag]]; //for testing sender tag elevation
    
    switch ([sender tag]) {
        case 0 ... 10:{
            [CalcPerformer Insert: [NSString stringWithFormat:@"%d" , [sender tag]]];
            _Label1.text = [CalcPerformer GetDisplay];
            break;
        }
        case 100 ... 900:{
            [CalcPerformer ExecCommand: [sender tag]];
            _Label1.text = [CalcPerformer GetDisplay];
            break;
        }
        case 11:{
            [CalcPerformer Insert: @"."];
            _Label1.text = [CalcPerformer GetDisplay];
            break;
        }
        case 1000:{
            [CalcPerformer Erase];
            _Label1.text = @"0";
            break;
        }
          
        default:{
            [CalcPerformer Erase];
            _Label1.text = @"99990";
        }
            break;
    }
    _Text1.text = _Label1.text;
}

@end
