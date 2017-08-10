//
//  main.m
//  Lesson_2
//
//  Created by Nikita Vintonovich on 8/10/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BOOL variableBool = YES;
        variableBool = NO;
        
        int variableInt = 32;
        variableInt = -45;
        variableInt = 0;
        
        long variableLong = 1000000000;
        variableLong = -1000000000;
        
        float variableFloat = 0.45;
        variableFloat = -100.345;
        
        NSInteger variableInteger = 20;
        variableInteger = -35;
        variableInteger = 0;
        
        CGFloat variableCGFloat = 0.32f;
        variableCGFloat = -35.00098f;
        variableCGFloat = 99.25f;
        
        NSNumber *variableNumber = @(variableInt);
        variableNumber = @(variableBool);
        
        char variableChar = 'c';
        variableChar = '5';
        
        NSString *variableString = @"Some text";
        variableString = @"Another text  ";
        variableString = [NSString stringWithFormat:@"%@ %c", variableString, variableChar];
        
        NSArray *variableArray = @[@(variableBool), @(variableInt), @(variableLong), @(variableFloat), @(variableInteger), @(variableCGFloat), variableNumber, variableString];
        
        NSLog(@"Array contains elements: %lu", variableArray.count);
        
    }
    return 0;
}
