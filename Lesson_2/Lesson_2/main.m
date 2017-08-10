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
        // Цикл For
        NSLog(@"Цикл For:");
        
        // Вывести 10 раз строку с текстом
        
        for (NSInteger i = 0; i < 10; i++)
        {
            NSLog(@"Индекс i == %lu, строка: %lu", i, i+1);
        }
        
        
        // Цикл Do While
        NSLog(@"\nЦикл Do While:");
        
        NSInteger value = 0;
        
        do
        {
            NSLog(@"Value = %lu", value);
            value++;
        }
        while (value < 10);
        
        
        // Цикл While Do
        NSLog(@"\nЦикл While Do:");
        
        while (value >= 0)
        {
            NSLog(@"Value = %lu", value);
            value--;
        }
        
        
        // Цикл For In
        NSLog(@"\nЦикл For In:");
        
        NSArray *arrayOfSrings = @[@"Я", @"стану", @"iOS", @"разработчиком"];
        
        for (NSString *string in arrayOfSrings)
        {
            NSLog(@"%@", string);
        }
        
        
        // Перечисление с блоком
        NSLog(@"\nПеречисление с блоком:");
        
        [arrayOfSrings enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"%@", obj);
        }];
        
    }
    return 0;
}
