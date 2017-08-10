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
        // '=' является оператором присвоения значения
        
        // Арифметические Операторы
        
        NSInteger a = 7;
        NSInteger b = 5;
        
        NSInteger result = 0;
        
        result = a + b;
        NSLog(@"сумма = %lu", result);
        
        result = a - b;
        NSLog(@"разница = %lu", result);
        
        result = a * b;
        NSLog(@"умножение = %lu", result);
        
        CGFloat resultFloat = a / b;
        NSLog(@"деление = %f", resultFloat);
        NSLog(@"деление с двумя знаками после запятой = %.2f", resultFloat);
        NSLog(@"деление с пятью знаками после запятой = %.5f", resultFloat);
        
        resultFloat = a % b;
        NSLog(@"Остаток от деления 8 / 5 = %f", resultFloat);
        NSLog(@"Остаток от деления 8 / 5 = %lu", a % b); // результат 1.6 -> округление до 2
        NSLog(@"Остаток от деления 4 / 2 = %f", (CGFloat)(4 % 2));
        NSLog(@"Остаток от деления 2 / 2 = %f", (CGFloat)(2 % 2));
        
        NSInteger i = 3;
        
        NSLog(@"i++ = %lu", i++);
        NSLog(@"i = %lu", i);
        i = 3;
        NSLog(@"i-- = %lu", i--);
        NSLog(@"i = %lu", i);
        i = 3;
        NSLog(@"++i = %lu", ++i);
        i = 3;
        NSLog(@"--i = %lu", --i);
        i = 3;
        
        
        // Операторы отношения
        
        // a == 7, b == 5
        
        BOOL resultBool = NO;
        
        resultBool = a == b;
        NSLog(@"a == b, ответ: %@", resultBool ? @"да" : @"нет");
        
        resultBool = a != b;
        NSLog(@"a != b, ответ: %@", resultBool ? @"да" : @"нет");
        
        resultBool = a < b;
        NSLog(@"a < b, ответ: %@", resultBool ? @"да" : @"нет");
        
        resultBool = a > b;
        NSLog(@"a > b, ответ: %@", resultBool ? @"да" : @"нет");
        
        resultBool = 5 >= 5;
        NSLog(@"5 >= 5, ответ: %@", resultBool ? @"да" : @"нет");
        
        
        // Логические операторы
        
        // a == 7, b == 5
        
        resultBool = (a > 0) && (b > 0);
        NSLog(@"(a > 0) && (b > 0), ответ: %@", resultBool ? @"да" : @"нет");
        
        resultBool = (a > 0) || (b < 0);
        NSLog(@"(a > 0) || (b < 0), ответ: %@", resultBool ? @"да" : @"нет");
        NSLog(@"( YES ) || (  NO ), ответ: %@", resultBool ? @"да" : @"нет");
        
        
        // Условные операторы
        
        BOOL areYouHappy = YES;
        
        if (areYouHappy)
        {
            NSLog(@"Все будет хорошо)))");
        }
        
        BOOL niceWeather = YES;
        
        if (niceWeather)
        {
            NSLog(@"Пойду гулять");
        }
        else
        {
            NSLog(@"Буду сидеть дома и смотреть смешные видосики");
        }
        
        niceWeather = NO;
        areYouHappy = YES;
        
        BOOL internetAvailable = NO;
        
        if (niceWeather && areYouHappy)
        {
            NSLog(@"Куплю себе мороженко");
        }
        else
        {
            if (internetAvailable)
            {
                NSLog(@"Буду сидеть дома и смотреть смешные видосики");
            }
            else
            {
                NSLog(@"Позвоню другу");
            }
        }
        
        // arc4random_uniform(5) - это метод, который генерирует случайное чило от 0 до 5
        
        NSInteger randomResult = arc4random_uniform(5);
        
        switch (randomResult)
        {
            case 0:
                NSLog(@"Машина едет прямо");
                break;
            case 1:
                NSLog(@"Машина останавливается");
                break;
            case 2:
                NSLog(@"Машина поварачивает");
                break;
            case 3:
                NSLog(@"Машина выполняет дрифт");
                break;
            case 4:
                NSLog(@"Машина на ремонте");
                break;
            case 5:
                NSLog(@"Машина на мойке");
                break;
                
            default:
                NSLog(@"Машина в гараже");
                break;
        }
        
    }
    return 0;
}

